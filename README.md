This repo is a fork of https://gitlab.com/risingprismtv/single-gpu-passthrough

Instead of renaming your machine to `win10` you can add `-passthrough` to the end of your machines name.

# Single GPU Passthrough Scripts

Scripts for passing a single GPU from a Linux host to a Windows VM and back.

1. Add `-passthrough` to the end of your VM name
2. Run the install_hooks.sh script as root

Note the PCI ids and display manager should be detected automatically. If you are using an unsupported display manager that is not listed in the hooks/vfio-startup.sh script, feel free to contact us on the Discord server and we shall add your display manager.

If using startx, add a line `killall -u user_name` to qemu/vfio-startup.sh script towards the beginning and you can add a line to vfio-teardown.sh to start your window manager/ desktop environment again. Don't just add startx because it will be run as root. Instead add `su -s /bin/bash -c "/usr/bin/startx" -g username username` replacing username with your username to the end of the vfio-teardown.sh script.

For a detailled guide on how to use these scripts, [check out the the wiki of this repo.](https://gitlab.com/risingprismtv/single-gpu-passthrough/-/wikis/home)
