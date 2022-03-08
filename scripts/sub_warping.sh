#!/bin/bash


export ANTSPATH=/home/acabane/Documents/SOFTWARE/ANTs/install/bin
export PATH=${ANTSPATH}:$PATH
cd ../

image='sub-003' #Image to warp
warpfrom='sub-002' #warping moving
warpto='sub-001' #warping target

input='./'${image}'/ses-1/anat/'${image}'_ses-1_T1map.nii.gz'
reference=$input
warp_field='./derivatives/fusion_warpfiles/'${warpto}'/'${warpto}'_malf_atlas60_QUICK_'${warpfrom}'_ses-1_T1map_0_1Warp.nii.gz'
warp_matrix='./derivatives/fusion_warpfiles/'${warpto}'/'${warpto}'_malf_atlas60_QUICK_'${warpfrom}'_ses-1_T1map_0_0GenericAffine.mat'
output='./warped_sub/'${image}'_'${warpfrom}'_'${warpto}

antsApplyTransforms -d 3 -e 0 -i $input -r $reference -o $output.nii.gz -t $warp_field $warp_matrix -n NearestNeighbor -v 1

input='./derivatives/atlases/'${image}'/ses-1/'${image}'_ses-1_7TAMI_DGN.nii.gz'
antsApplyTransforms -d 3 -e 0 -i $input -r $reference -o ${output}_DGN.nii.gz -t $warp_field $warp_matrix -n NearestNeighbor -v 1



