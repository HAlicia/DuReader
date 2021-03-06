export DATA_DIR=/env/comprehension/data
export TASK_NAME=DuReader
export CUDA_VISIBLE_DEVICES=0,2,3
python main.py --model_type bert --model_name_or_path chinese_wwm_ext_pytorch --task_name $TASK_NAME --do_train --do_eval --data_dir=$DATA_DIR/$TASK_NAME --max_seq_length 128 --per_gpu_train_batch_size 32 --learning_rate 2e-5 --num_train_epochs 3.0 --output_dir ./roberta_output/$TASK_NAME/
