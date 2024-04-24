# python -m torch.distributed.launch --nproc_per_node 1  main.py --cfg configs/max_vit_small.yaml --data-path /root/jinyfeng/datas/ImageNet-1K/ImageNet-1K --batch-size 128 --local_rank 0 > max_vit_small.log

deepspeed --include=localhost:0,1,2,3,4,5,6,7 --master_port=29501  main.py --cfg configs/max_vit_small.yaml --data-path /root/jinyfeng/datas/ImageNet-1K/ImageNet-1K --batch-size 128 > max_vit_small.log

