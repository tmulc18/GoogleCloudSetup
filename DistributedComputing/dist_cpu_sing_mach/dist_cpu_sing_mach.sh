#!/bin/bash
source activate tensorflow1
python dist_cpu_sing_mach.py --job_name "ps" --task_index 0 &
python dist_cpu_sing_mach.py --job_name "ps" --task_index 1 &
python dist_cpu_sing_mach.py --job_name "worker" --task_index 0 &
python dist_cpu_sing_mach.py --job_name "worker" --task_index 1 &