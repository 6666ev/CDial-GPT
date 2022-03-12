# python train.py --pretrained --model_checkpoint ./CDial-GPT_LCCC-base --data_path data/toy_data.json --scheduler linear  
# 使用单个GPU进行训练
# python infer.py --model_checkpoint runs/Jan12_18-11-04_klab-SYS-7049GP-TRT --datapath data/toy_data.json --out_path toy_result.txt  # 在测试数据上生成回复

# nohup python train.py --pretrained --model_checkpoint ./CDial-GPT_LCCC-base --data_path data/legal/legal_data.json --scheduler linear  > out/legal.out &
# nohup python train.py --pretrained --model_checkpoint ./CDial-GPT_LCCC-base --data_path data/medical/medical_data.json --scheduler linear > out/medical.out &

python infer.py --model_checkpoint legal_data_runs/Jan12_20-46-35_klab-SYS-7049GP-TRT --datapath data/legal/legal_data.json --out_path legal_result2.txt  # 在测试数据上生成回复
python infer.py --model_checkpoint medical_data_runs/Jan12_20-46-50_klab-SYS-7049GP-TRT --datapath data/medical/medical_data.json --out_path medical_result2.txt  # 在测试数据上生成回复

# python interact.py --model_checkpoint medical_data_runs/Jan12_20-46-50_klab-SYS-7049GP-TRT
            
