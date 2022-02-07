#!/bin/bash

export ANTSPATH=/home/acabane/Documents/SOFTWARE/ANTs/install/bin
export PATH=${ANTSPATH}:$PATH

M=60 #Nombre de segmentations effectuée
N=60 #Indice de la segmentation malf
QuickSeg=true

if QuickSeg=true #type de segmentation
then
  o=_QUICK
  speed=Quick
else
  o=''
  speed=Slow
fi

cd ../ #Si on place le script dans le dossier script plutôt qu'à la racine de 7TAMIbrain

for i in $(seq -f "%03g" 5 $M)
do 
  LabelOverlapMeasures 3 ./derivatives/fusion/sub-${i}/malf_atlas${N}Labels.nii.gz ../derivatives/atlases/sub-${i}/ses-1/sub-${i}_ses-1_7TAMI_DGN.nii.gz /metrics/sub-${i}/sub-${i}_metrics_AtlasTo${speed}
done
