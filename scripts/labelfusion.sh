#!/bin/bash

export ANTSPATH=/home/acabane/Documents/SOFTWARE/ANTs/install/bin
export PATH=${ANTSPATH}:$PATH


N=60 #Nombre de sujets
M=60 #Nombre de templates
threads=32

cd ../ #Si on place le script dans le dossier script plutôt qu'à la racine de 7TAMIbrain

#arr=$(seq -f "%03g" 4 $M) #On a déja fait 1-3
arr=(001)
for i in ${arr[@]} #On a déja fait 1-4
do

  echo $i
  L_sub=''
  array=$(seq -f "%03g" 1 $N)
  for j in ${array/$i}
  do
    L_sub+='-g sub-'${j}'/ses-1/anat/sub-'${j}'_ses-1_T1map.nii.gz -l derivatives/atlases/sub-'${j}'/ses-1/sub-'${j}'_ses-1_7TAMI_DGN.nii.gz '
  done

  antsJointLabelFusion2.sh -d 3 -o derivatives/fusion/sub-${i}/malf_atlas${N}_QUICK_ -t sub-${i}/ses-1/anat/sub-${i}_ses-1_T1map.nii.gz $L_sub -j $threads
done

'''
N=60 #Nombre de sujets
M=10 #Nombre de templates
threads=32

arr=$(seq -f "%03g" 4 $M) #On a déja fait 1-3
arr=(001 ${arr[@]})
for i in ${arr[@]} #On a déja fait 1-3
do

  L_sub=''
  array=$(seq -f "%03g" 1 $N)
  for j in ${array/$i}
  do
    L_sub+='-g sub-'${j}'/ses-1/anat/sub-'${j}'_ses-1_T1map.nii.gz -l derivatives/atlases/sub-'${j}'/ses-1/sub-'${j}'_ses-1_7TAMI_DGN.nii.gz '
  done

  antsJointLabelFusion2.sh -d 3 -o derivatives/fusion/sub-${i}/malf_atlas${N}_SLOW_ -q 0 -t sub-${i}/ses-1/anat/sub-${i}_ses-1_T1map.nii.gz $L_sub -j $threads
done
