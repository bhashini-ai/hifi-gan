DATASET_NAME=en_nplt

INPUT_WAVS_DIR=/workspace/DeepLearningExamples/PyTorch/SpeechSynthesis/FastPitch/${DATASET_NAME}/wavs
INPUT_MELS_DIR=/workspace/DeepLearningExamples/PyTorch/SpeechSynthesis/FastPitch//${DATASET_NAME}/mels
INPUT_TRAINING_FILE=/workspace/DeepLearningExamples/PyTorch/SpeechSynthesis/FastPitch//${DATASET_NAME}/filelists/hifigan_audio_text_train.txt
INPUT_VALIDATION_FILE=/workspace/DeepLearningExamples/PyTorch/SpeechSynthesis/FastPitch//${DATASET_NAME}/filelists/hifigan_audio_text_val.txt
OUTPUT_DIR=./output/${DATASET_NAME}/

python train.py --input_wavs_dir ${INPUT_WAVS_DIR} --input_mels_dir ${INPUT_MELS_DIR} --input_training_file ${INPUT_TRAINING_FILE} --input_validation_file ${INPUT_VALIDATION_FILE} --checkpoint_path ${OUTPUT_DIR} --config config_v1.json

