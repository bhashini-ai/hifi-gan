DATASET_NAME=te_m_rp

INPUT_WAVS_DIR=./${DATASET_NAME}/wavs
INPUT_MELS_DIR=./${DATASET_NAME}/mels
INPUT_TRAINING_FILE=./${DATASET_NAME}/filelists/audio_text_train.txt
INPUT_VALIDATION_FILE=./${DATASET_NAME}/filelists/audio_text_val.txt
OUTPUT_DIR=./output/{DATASET_NAME}/

python train.py --input_wavs_dir ${INPUT_WAVS_DIR} --input_mels_dir ${INPUT_MELS_DIR} --input_training_file ${INPUT_TRAINING_FILE} --input_validation_file ${INPUT_VALIDATION_FILE} --checkpoint_path {OUTPUT_DIR} --fine_tuning True --config config_v1.json

DATASET_PATH=te_m_rp
OUTPUT_DIR=./output/${DATASET_PATH}/
TRAIN_FILELIST=${DATASET_PATH}/filelists/audio_pitch_text_train.txt
VAL_FILELIST=${DATASET_PATH}/filelists/audio_pitch_text_val.txt
EPOCHS=2500
EPOCHS_PER_CHECKPOINT=20
PHONE=false
TEXT_CLEANERS=basic_cleaners
LOAD_PITCH_FROM_DISK=true
LOAD_MEL_FROM_DISK=false

