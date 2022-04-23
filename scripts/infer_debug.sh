DATASET_NAME=en_nplt
HIFIGAN_STEP_NUMBER=2335
OUTPUT_DIR=output/debug/
python inference_e2e.py --input_mels_dir ${OUTPUT_DIR} --output_dir ${OUTPUT_DIR} --checkpoint_file output/${DATASET_NAME}/g_0${HIFIGAN_STEP_NUMBER}000

