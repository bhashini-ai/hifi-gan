DATASET_NAME=hi_nplt
HIFIGAN_STEP_NUMBER=2685
python export_torchscript.py --checkpoint_file output/${DATASET_NAME}/g_0${HIFIGAN_STEP_NUMBER}000 --output output/torchscript/${DATASET_NAME}_HiFiGAN_${HIFIGAN_STEP_NUMBER}.pt
