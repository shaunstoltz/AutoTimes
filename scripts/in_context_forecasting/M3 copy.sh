model_name=AutoTimes_Llama

python -u run.py   --task_name in_context_forecast   --is_training 1   --root_path ./dataset/m3   --test_data_path m3_yearly_dataset.tsf   --seasonal_patterns 'Yearly'   --model_id m3_Yearly   --model $model_name   --data m4   --seq_len 18   --label_len 12   --token_len 6   --test_seq_len 6   --test_label_len 0   --test_pred_len 6   --batch_size 16   --des 'Exp'   --itr 1   --learning_rate 0.0005   --loss 'SMAPE'   --use_amp   --mlp_hidden_dim 128   --cosine   --tmax 10  --drop_short --llm_ckp_dir C:\Users\shaun\.cache\huggingface\hub\models--meta-llama--Meta-Llama-3-8B-Instruct\snapshots\e1945c40cd546c78e41f1151f4db032b271faeaa

python -u run.py   --task_name in_context_forecast   --is_training 1   --root_path ./dataset/m4   --test_data_path m3_quarterly_dataset.tsf   --seasonal_patterns 'Quarterly'   --model_id m3_Quarterly   --model AutoTimes_Gpt2   --data m4   --seq_len 24   --label_len 16   --token_len 8   --test_seq_len 8   --test_label_len 0   --test_pred_len 8   --batch_size 16   --des 'Exp'   --itr 1   --learning_rate 0.0001   --loss 'SMAPE'   --use_amp   --mlp_hidden_dim 1024   --cosine   --tmax 10   --drop_short  --llm_ckp_dir C:\Users\shaun\.cache\huggingface\hub\models--openai-community--gpt2\snapshots\607a30d783dfa663caf39e06633721c8d4cfcd7e\

python -u run.py   --task_name in_context_forecast   --is_training 1   --root_path ./dataset/m4   --test_data_path m3_monthly_dataset.tsf   --seasonal_patterns Monthly   --model_id m4_Monthly   --model AutoTimes_Gpt2   --data m4   --seq_len 54   --label_len 36   --token_len 18   --test_seq_len 18   --test_label_len 0   --test_pred_len 18   --batch_size 16   --des Exp   --itr 1   --learning_rate 0.0005   --loss SMAPE   --use_amp   --mlp_hidden_dim 256   --cosine   --tmax 10   --drop_short --llm_ckp_dir C:\Users\shaun\.cache\huggingface\hub\models--openai-community--gpt2\snapshots\607a30d783dfa663caf39e06633721c8d4cfcd7e\ --patience 10 --train_epochs 100

python -u run.py   --task_name in_context_forecast   --is_training 1   --root_path ./dataset/m4   --test_data_path m3_monthly_dataset.tsf   --seasonal_patterns Monthly   --model_id m4_Monthly   --model AutoTimes_Gpt2   --data m4   --seq_len 54   --label_len 36   --token_len 18   --test_seq_len 18   --test_label_len 0   --test_pred_len 18   --batch_size 16   --des Exp   --itr 1   --learning_rate 0.0005   --loss SMAPE   --use_amp   --mlp_hidden_dim 256   --cosine   --tmax 10   --drop_short --llm_ckp_dir C:\Users\shaun\.cache\huggingface\hub\models--openai-community--gpt2-large\snapshots\32b71b12589c2f8d625668d2335a01cac3249519\ --patience 10 --train_epochs 100

python -u run.py \
  --task_name in_context_forecast \
  --is_training 1 \
  --root_path ./dataset/m4 \
  --test_data_path m3_other_dataset.tsf \
  --seasonal_patterns 'Quarterly' \
  --model_id m4_Quarterly \
  --model $model_name \
  --data m4 \
  --seq_len 24 \
  --label_len 16 \
  --token_len 8 \
  --test_seq_len 8 \
  --test_label_len 0 \
  --test_pred_len 8 \
  --batch_size 16 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.0005 \
  --loss 'SMAPE' \
  --use_amp \
  --mlp_hidden_dim 512 \
  --cosine \
  --tmax 10 \
  --drop_short