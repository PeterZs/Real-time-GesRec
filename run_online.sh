#!/bin/bash
python real_time_test.py \
	--root_path ~/\
	--video_path Desktop/EgoGesture/images \
	--whole_path Subject09/Scene6/Color/rgb1 \
	--annotation_path MyRes3D-Ahmet/annotation_EgoGesture/egogestureall.json \
	--resume_path_det MyRes3D-Ahmet/report/egogesture_resnetl_10_Depth_8_9939.pth \
	--resume_path_clf MyRes3D-Ahmet/report/egogesture_resnext_101_Depth_32_9403.pth  \
	--result_path Desktop/Real-time-GesRec/results \
	--dataset egogesture    \
	--sample_duration_det 8 \
	--sample_duration_clf 32 \
	--model_det resnetl \
	--model_clf resnext \
	--model_depth_det 10 \
	--model_depth_clf 101 \
	--resnet_shortcut_det A \
	--resnet_shortcut_clf B \
	--batch_size 1 \
	--n_classes_det 2 \
	--n_finetune_classes_det 2 \
	--n_classes_clf 83 \
	--n_finetune_classes_clf 83 \
	--n_threads 16 \
	--modality_det Depth \
	--modality_clf Depth \
	--train_crop random \
	--test_subset test  \
	--det_strategy raw \
	--det_queue_size 4 \
	--det_threshold 1 \
	--clf_strategy raw \
	--clf_queue_size 2 \
	--clf_threshold_pre 2 \
	--clf_threshold_final 1 \
	--stride_len 1 \
	--no_cuda \
	

