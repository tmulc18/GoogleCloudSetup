# Distributed TensorFlow

TensorFlow can hog your GPUs, which is very annoying if you want to run multiple experiments on the same machine and know that each expirement at most uses one GPU.  `exp_sit.py` is an examplatory script demonstrating how to avoid this defualt overallocation.  To test show yourself that your multigpu machine is capable of running parallel expirements, run the script twice (at the same time!) with different `gpu_id` values.  If successful, neither script should fail.  

## Arguments

* `--gpu_id` the ID of the GPU
* `--sleep` the number of stale seconds the script will hold the GPU
