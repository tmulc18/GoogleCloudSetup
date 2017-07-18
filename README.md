# GoogleCloudSetup
Getting started with [Google Cloud](https://cloud.google.com).

# [Quotas](https://docs.google.com/forms/d/e/1FAIpQLSe291Fkdz1BuSe33-lSWXe5L_WmVhdeTq0WIE-wlREGz9zkDA/viewform)

Need to have quota > 0 in the region you want to compute.

# Create instance

1. Google cloud console
2. Main menu (top left)
3. VM Instances
4. Custom settings

[VM Instance link](https://console.cloud.google.com/compute/instances)

# [SSH Keys](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys)
1. Generate the key `ssh-keygen -t rsa -f ~/.ssh/[KEY_FILE_NAME] -C [USERNAME]`
2. Set permissions `chmod 400 ~/.ssh/[KEY_FILE_NAME]`
3. In local terminal run `cat ~/.ssh/[KEY_FILE_NAME].pub` and copy contents
4. Add key to the project [here](https://console.cloud.google.com/compute/metadata/sshKeys)

# Logging into the server

1. Navigate to the vm instances page and find your ip address
2. `ssh -i ~/.ssh/[KEY_FILE_NAME] [IP_ADDRESS]`

# Install GPU drivers, Python packages, etc. 

`sh instance_setup.sh`

# Refresh

`source activate ~/.bashrc`

# Test Install

It's important to test your intall.  Do this with 
`python -c "import tensorflow"` which should run without errors.
