import numpy as np

file = open('/home/acabane/Documents/PFE_2022/7TAMIbrain_bids/metrics/sub-001/sub-001_metrics_AtlasToSLOW')

def MetricToArray(file):
    text = file.readlines()
    M = np.zeros((49,6))
        
    for i in range(1,50):
        j=1
        while text[i][j-1] != ',':
            j+=1
        str = ''
        k=0
        while j < len(text[i]):
            if text[i][j] == ',':
                M[i-1][k]=float(str)
                k+=1
                str = ''
            else:
                str+=text[i][j]
            j+=1
        M[i-1][-1]=float(str)
    
    return M

def ArrayToMetric(array):
    lines=['Label,Total/Target,Jaccard,Dice,VolumeSimilarity,FalseNegative,FalsePositive\n']
    for l in array:
        line=''
        for j in range(5):
           line+=str(l[j])+','
        line+=str(l[5])+'\n'
        lines.append(line)
    
'''    lines[1]='all,'+lines[1]
    labels=[i in range(1,10),i in range(10,13),i in range(14,21),i in range(26,32),i in range(51,58),i in range(59,71),i in range(1,10)]
    for i in range(2,8):
    for i in range(10,12):
    for i in range(14,33):
        lines[i]=str(i-1)+','+lines[i]
    for i in range(33,50):
        lines[i]=str(i+18)+','+lines[i]
    return lines'''
    

#print(file.readlines())
for 
print(len(MetricToArray(file)[:,2]))
#print(ArrayToMetric(MetricToArray(file)))
