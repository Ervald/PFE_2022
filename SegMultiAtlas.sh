#!/bin/sh

#Put this script in the 7TAMIbrain folder

export ANTSPATH=/opt/ANTs/bin/
export PATH=${ANTSPATH}:$PATH

N=5  #nombre d'Atlas
M=5  #nombre de sujets

scriptpath=$(pwd)

cd derivatives
mkdir warp
cd warp

for i in $(seq -f "%03g" 1 $N)
do

  mkdir sub-${i}
  cd sub-${i}
  pwd
  array=$(seq -f "%03g" 1 $M)
  for j in ${array/$i}
  
  do
  
    echo sub-${i}_sub-${j}_7TAMI_2_SyN1Warp.nii.gz

    #antsRegistrationSyN.sh -d 3 -m $scriptpath/sub-${i}/ses-1/anat/sub-${i}_ses-1_T1map.nii.gz -f $scriptpath/sub-${j}/ses-1/anat/sub-${j}_ses-1_T1map.nii.gz -o sub-${j}_7TAMI_SyN
    
    #antsApplyTransforms -d 3 -e 0 -i $scriptpath/derivatives/atlases/sub-${i}/ses-1/sub-${i}_ses-1_7TAMI_DGN.nii.gz -r $scriptpath/sub-${j}/ses-1/anat/sub-${j}_ses-1_T1map.nii.gz -o $scriptpath/derivatives/atlases/sub-${j}/ses-1/sub-${j}_ses-1_7TAMI_DGN -t sub-${j}_7TAMI_SyN1Warp.nii.gz -t sub-${j}_7TAMI_SyN0GenericAffine.mat -n NearestNeighbor

  done
  cd ..
done
