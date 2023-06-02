#!/bin/bash
for data in MUV 

python tasks/mol_task/dp.py \
--device cuda:0 \
--dataset MoleculeNet \
--dataset_path ../datasets/dp/moleculenet \
--dataset_name $DATASET \
--config_path ./configs/dp/graphmvp.json \
--output_path ../ckpts/finetune_ckpts/dp/graphmvp_finetune_$DATASET.pth \
--num_workers 1 \
--mode train \
--batch_size 256 \
--epochs 80 \
--patience 20

