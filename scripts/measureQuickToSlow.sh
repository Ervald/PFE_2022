#!/bin/bash

export ANTSPATH=/home/acabane/Documents/SOFTWARE/ANTs/install/bin
export PATH=${ANTSPATH}:$PATH

M=60 #Nombre de segmentations effectuée
N=60 #Indice de la segmentation malf

cd ../

mkdir metrics
for i in $(seq -f "%03g" 1 ${M})
do 
  LabelOverlapMeasures 3 ./derivatives/fusion/sub-${i}/sub-${i}_malf_atlas${N}_QUICK_Labels.nii.gz ./derivatives/fusion/sub-${i}/sub-${i}_malf_atlas${N}_SLOW_Labels.nii.gz sub-${i}_metrics_QuickToSlow
  mkdir metrics/QuickToSlow
  mv sub-${i}_metrics_QuickToSlow metrics/QuickToSlow/
done
