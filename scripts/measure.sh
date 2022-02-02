#!/bin/bash

export ANTSPATH=/home/acabane/Documents/SOFTWARE/ANTs/install/bin
export PATH=${ANTSPATH}:$PATH

LabelOverlapMeasures 3 ../derivatives/fusion/sub-001/malf_atlas60Labels.nii.gz ../derivatives/atlases/sub-001/ses-1/sub-001_ses-1_7TAMI_DGN.nii.gz 

