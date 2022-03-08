#!/bin/bash

export ANTSPATH=/home/acabane/Documents/SOFTWARE/ANTs/install/bin
export PATH=${ANTSPATH}:$PATH


N=60 #Nombre de sujets
M=40 #Nombre de templates
threads=48

cd ../ #Si on place le script dans le dossier script plutôt qu'à la racine de 7TAMIbrain

for i in $(seq -f "%03g" 40 $M)
do

  L_sub=''
  array=$(seq -f "%03g" 1 $N)
  for j in ${array/$i}
  do
    L_sub+='-g sub-'${j}'/ses-1/anat/sub-'${j}'_ses-1_T1map.nii.gz -l derivatives/atlases/sub-'${j}'/ses-1/sub-'${j}'_ses-1_7TAMI_DGN.nii.gz '
  done

  antsJointLabelFusion2.sh -d 3 -o derivatives/fusion_warpfiles/sub-${i}/sub-${i}_malf_atlas${N}_SLOW_ -q 0 -t sub-${i}/ses-1/anat/sub-${i}_ses-1_T1map.nii.gz $L_sub -k 1 -c 2 -j $threads
  #-k pour garder les champs de déformation
done
