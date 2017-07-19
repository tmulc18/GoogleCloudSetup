# Distributed TensorFlow

TensorFlow can hog your GPUs, which is very annoying if you want to run multiple experiments on the same machine at the same time and know that each expirement at most uses one GPU.  `exp_sit.py` is an exemplary script demonstrating how to avoid this defualt overallocation.  To test show yourself that your multigpu machine is capable of running parallel expirements, run the script twice (at the same time!) with different `gpu_id` values.  If successful, neither script should fail.  

## Arguments

* `--gpu_id` the ID of the GPU
* `--sleep` the number of stale seconds the script will hold the GPU

## Notes

This solution is very hacky and should only be considered a workaround.  If you look at the output of the script, you will notice that the device operations happen on /gpu:0 regardless of the values you pass. This solution uses the remapping feature in the visible devices to set the desired gpu to the zeroth device while making all other devices invisible.  This actually doesn't work in the case where the true GPU0 is not being used.  In that case, regardless of your passed ID, the true GPU in use will be GPU0.  Still, this solution is better than the default behaviour because all other GPUs will remain free.
