import numpy as np
import subprocess
import time

#Pour l'instant on ne considère que la méthode rapide pour simplifier le problème
draw = [0,1,2]
L_subjects = np.arange(1,61)[1:] #On a déjà fait le premier sujet
L_n_labels = np.linspace(2, 60, 10, dtype = int)[:-1] #60 labels corespond à la segmentation malf

def FusionJobs(subject, k, n, draw, threads): #n = nombre de sujets considérés, k = nombre de sujets choisis parmi les n
    
    bash = open('FusionJob_'+str(k)+'sub.sh', "w")
    bash.write('#!/bin/bash\n\n')
    bash.write('\nmkdir sub-'+format(subject, '03')+'\ncd ./sub-'+format(subject, '03')+'\n')

    for i in draw: #Nombre de génération des sujets
        line = ''
        
        if k<n:
            Lsub = np.random.choice(np.delete(np.arange(1, n+1), subject-1), k, replace=False)
        else:
            Lsub = np.delete(np.arange(1, n+1), subject-1)

        out = 'sub-'+format(subject, '03')+'_'+str(k)+'sub'+'_'+str(i)+'_Labels.nii.gz'
        target = '../../../sub-'+format(subject, '03')+'/ses-1/anat/sub-'+format(subject, '03')+'_ses-1_T1map.nii.gz'
        line += '\nantsJointFusion -d 3 -o '+out+' -t '+target

        for sub in Lsub:
            if sub < subject:
                index = str(sub-1)
            else:
                index = str(sub-2)
            folder = '../../../derivatives/fusion_warpfiles/'
            warped = folder+'sub-'+format(subject, '03')+'/sub-'+format(subject, '03')+'_malf_atlas60_QUICK_sub-'+format(sub, '03')+'_ses-1_T1map_'+index+'_Warped.nii.gz'
            labels = folder+'sub-'+format(subject, '03')+'/sub-'+format(subject, '03')+'_malf_atlas60_QUICK_sub-'+format(sub, '03')+'_ses-1_T1map_'+index+'_WarpedLabels.nii.gz'
            line += ' -g '+warped+' -l '+labels

        bash.write(line)
    
    bash.write('\n\ncd ../\n')
    bash.write('rm FusionJob_'+str(k)+'sub.sh') #burn after reading
    bash.close()

def MetricsJobs(subject, k, n, draw): #n = nombre de sujets considérés, k = nombre de sujets choisis parmi les n
    
    bash = open('MetricsJob_'+str(k)+'sub.sh', "w")
    bash.write('#!/bin/bash\n\n')
    bash.write('\ncd ./sub-'+format(subject, '03')+'\n')

    for i in draw: #Nombre de génération des sujets
        line = ''

        out = 'sub-'+format(subject, '03')+'_'+str(k)+'sub'+'_'+str(i)+'_Metrics'
        DGN_Labels = '../../../derivatives/atlases/sub-'+format(subject, '03')+'/ses-1/sub-'+format(subject, '03')+'_ses-1_7TAMI_DGN.nii.gz'
        Fusion_Labels = './sub-'+format(subject, '03')+'_'+str(k)+'sub'+'_'+str(i)+'_Labels.nii.gz'
        line += '\nLabelOverlapMeasures 3 '+DGN_Labels+' '+Fusion_Labels+' '+out
    
        bash.write(line)
    
    bash.write('\n\ncd ../\n')
    bash.write('rm MetricsJob_'+str(k)+'sub.sh') #burn after reading
    bash.close()


for subject in L_subjects:
    for k in L_n_labels:
        FusionJobs(subject, k, 60, draw, 32)
        start_time = time.time()
        print("Fusion de %d labels du sujet %d"%(k, subject))
        subprocess.run(["bash","FusionJob_"+str(k)+"sub.sh"])
        print("--- %s seconds ---" % (time.time() - start_time))
        MetricsJobs(subject, k, 60, draw)
        subprocess.run(["bash","MetricsJob_"+str(k)+"sub.sh"])
