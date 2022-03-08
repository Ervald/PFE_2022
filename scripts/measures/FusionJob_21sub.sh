#!/bin/bash


mkdir sub-002
cd ./sub-002

antsJointFusion -d 3 -o sub-002_21sub_0_Labels.nii.gz -t ../../../sub-002/ses-1/anat/sub-002_ses-1_T1map.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-031_ses-1_T1map_29_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-031_ses-1_T1map_29_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-019_ses-1_T1map_17_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-019_ses-1_T1map_17_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-007_ses-1_T1map_5_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-007_ses-1_T1map_5_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-017_ses-1_T1map_15_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-017_ses-1_T1map_15_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-011_ses-1_T1map_9_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-011_ses-1_T1map_9_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-054_ses-1_T1map_52_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-054_ses-1_T1map_52_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-014_ses-1_T1map_12_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-014_ses-1_T1map_12_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-045_ses-1_T1map_43_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-045_ses-1_T1map_43_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-018_ses-1_T1map_16_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-018_ses-1_T1map_16_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-005_ses-1_T1map_3_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-005_ses-1_T1map_3_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-015_ses-1_T1map_13_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-015_ses-1_T1map_13_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-001_ses-1_T1map_0_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-001_ses-1_T1map_0_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-030_ses-1_T1map_28_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-030_ses-1_T1map_28_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-013_ses-1_T1map_11_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-013_ses-1_T1map_11_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-039_ses-1_T1map_37_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-039_ses-1_T1map_37_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-049_ses-1_T1map_47_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-049_ses-1_T1map_47_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-042_ses-1_T1map_40_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-042_ses-1_T1map_40_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-053_ses-1_T1map_51_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-053_ses-1_T1map_51_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-021_ses-1_T1map_19_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-021_ses-1_T1map_19_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-056_ses-1_T1map_54_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-056_ses-1_T1map_54_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-060_ses-1_T1map_58_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-060_ses-1_T1map_58_WarpedLabels.nii.gz
antsJointFusion -d 3 -o sub-002_21sub_1_Labels.nii.gz -t ../../../sub-002/ses-1/anat/sub-002_ses-1_T1map.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-043_ses-1_T1map_41_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-043_ses-1_T1map_41_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-033_ses-1_T1map_31_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-033_ses-1_T1map_31_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-047_ses-1_T1map_45_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-047_ses-1_T1map_45_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-048_ses-1_T1map_46_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-048_ses-1_T1map_46_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-036_ses-1_T1map_34_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-036_ses-1_T1map_34_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-020_ses-1_T1map_18_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-020_ses-1_T1map_18_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-006_ses-1_T1map_4_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-006_ses-1_T1map_4_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-014_ses-1_T1map_12_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-014_ses-1_T1map_12_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-001_ses-1_T1map_0_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-001_ses-1_T1map_0_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-056_ses-1_T1map_54_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-056_ses-1_T1map_54_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-055_ses-1_T1map_53_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-055_ses-1_T1map_53_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-009_ses-1_T1map_7_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-009_ses-1_T1map_7_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-051_ses-1_T1map_49_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-051_ses-1_T1map_49_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-029_ses-1_T1map_27_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-029_ses-1_T1map_27_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-016_ses-1_T1map_14_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-016_ses-1_T1map_14_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-017_ses-1_T1map_15_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-017_ses-1_T1map_15_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-012_ses-1_T1map_10_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-012_ses-1_T1map_10_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-021_ses-1_T1map_19_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-021_ses-1_T1map_19_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-005_ses-1_T1map_3_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-005_ses-1_T1map_3_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-026_ses-1_T1map_24_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-026_ses-1_T1map_24_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-004_ses-1_T1map_2_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-004_ses-1_T1map_2_WarpedLabels.nii.gz
antsJointFusion -d 3 -o sub-002_21sub_2_Labels.nii.gz -t ../../../sub-002/ses-1/anat/sub-002_ses-1_T1map.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-023_ses-1_T1map_21_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-023_ses-1_T1map_21_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-041_ses-1_T1map_39_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-041_ses-1_T1map_39_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-051_ses-1_T1map_49_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-051_ses-1_T1map_49_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-057_ses-1_T1map_55_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-057_ses-1_T1map_55_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-019_ses-1_T1map_17_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-019_ses-1_T1map_17_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-026_ses-1_T1map_24_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-026_ses-1_T1map_24_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-036_ses-1_T1map_34_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-036_ses-1_T1map_34_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-060_ses-1_T1map_58_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-060_ses-1_T1map_58_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-021_ses-1_T1map_19_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-021_ses-1_T1map_19_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-017_ses-1_T1map_15_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-017_ses-1_T1map_15_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-031_ses-1_T1map_29_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-031_ses-1_T1map_29_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-010_ses-1_T1map_8_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-010_ses-1_T1map_8_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-003_ses-1_T1map_1_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-003_ses-1_T1map_1_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-046_ses-1_T1map_44_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-046_ses-1_T1map_44_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-025_ses-1_T1map_23_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-025_ses-1_T1map_23_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-033_ses-1_T1map_31_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-033_ses-1_T1map_31_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-005_ses-1_T1map_3_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-005_ses-1_T1map_3_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-020_ses-1_T1map_18_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-020_ses-1_T1map_18_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-053_ses-1_T1map_51_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-053_ses-1_T1map_51_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-037_ses-1_T1map_35_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-037_ses-1_T1map_35_WarpedLabels.nii.gz -g ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-027_ses-1_T1map_25_Warped.nii.gz -l ../../../derivatives/fusion_warpfiles/sub-002/sub-002_malf_atlas60_QUICK_sub-027_ses-1_T1map_25_WarpedLabels.nii.gz

cd ../
rm FusionJob_21sub.sh