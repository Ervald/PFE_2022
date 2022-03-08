#!/bin/sh

antsJointLabelFusion.sh -d 3 -o test -t ../sub-001/ses-1/anat/sub-001_ses-1_T1map.nii.gz -m -g ../derivatives/fusion_warpfiles/sub-001/sub-001_malf_atlas60_QUICK_sub-002_ses-1_T1map_0_Warped.nii.gz -l ../derivatives/fusion_warpfiles/sub-001/sub-001_malf_atlas60_QUICK_sub-002_ses-1_T1map_0_WarpedLabels.nii.gz -g ../derivatives/fusion_warpfiles/sub-001/sub-001_malf_atlas60_QUICK_sub-003_ses-1_T1map_1_Warped.nii.gz -l ../derivatives/fusion_warpfiles/sub-001/sub-001_malf_atlas60_QUICK_sub-003_ses-1_T1map_1_WarpedLabels.nii.gz
