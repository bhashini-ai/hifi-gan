FASTPITCH_DIR=/workspace/DeepLearningExamples/PyTorch/SpeechSynthesis/FastPitch
DATASET_NAME=hi_nplt
INFER_DIR=${DATASET_NAME}-infer-fastpitch-hifigan
FASTPITCH_CHECKPOINT_NUMBER=2000
HIFIGAN_STEP_NUMBER=750
SPEAKER=0
OUTPUT_DIR="./output/${DATASET_NAME}/${INFER_DIR}/speaker_${SPEAKER}-fastpitch_${FASTPITCH_CHECKPOINT_NUMBER}-hifigan_${HIFIGAN_STEP_NUMBER}"
python inference_e2e.py --input_mels_dir ${FASTPITCH_DIR}/${OUTPUT_DIR} --output_dir ${FASTPITCH_DIR}/${OUTPUT_DIR} --checkpoint_file output/${DATASET_NAME}/g_00${HIFIGAN_STEP_NUMBER}000

