#!/bin/bash

export ANTSPATH=/home/acabane/Documents/SOFTWARE/ANTs/install/bin
export PATH=${ANTSPATH}:$PATH

M=60 #Nombre de segmentations effectuée
N=60 #Indice de la segmentation malf
QuickSeg=true #mesures pour les segmentations rapides

cd ../ #Si on place le scrs le dossier script plutôt qu'à la racine de 7TAMIbrainipt dans le dossier script plutôt qu'à la racine de 7TAMIbrain

if QuickSeg=true
then
  speed=QUICK
else
  speed=SLOW
fi

mkdir metrics
for i in $(seq -f "%03g" 1 $M)
do 
  LabelOverlapMeasures 3 ./derivatives/fusion/sub-${i}/malf_atlas${N}_${speed}_Labels.nii.gz ./derivatives/atlases/sub-${i}/ses-1/sub-${i}_ses-1_7TAMI_DGN.nii.gz sub-${i}_metrics_AtlasTo${speed}
  mkdir metrics/sub-${i}
  mv sub-${i}_metrics_AtlasTo${speed} ./metrics/sub-${i}/
done
