#!/bin/bash
#source activate tensorflow1n
python dist_mult_gpu_sing_mach.py --job_name "ps" --task_index 0 &
python dist_mult_gpu_sing_mach.py --job_name "ps" --task_index 1 &
#source activate tensorflow1
python dist_mult_gpu_sing_mach.py --job_name "worker" --task_index 0 &
python dist_mult_gpu_sing_mach.py --job_name "worker" --task_index 1 &
