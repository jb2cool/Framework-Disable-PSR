#!/bin/bash
# Disable Panel Self Refresh of Framework laptop

# Exit on error
set -e

# Write relevant file to add on command to GRUB
sudo echo "GRUB_CMDLINE_LINUX_DEFAULT=\"$GRUB_CMDLINE_LINUX_DEFAULT amdgpu.dcdebugmask=0x12\"" | sudo tee /etc/default/grub.d/99-amdgpu-fix.cfg

# Update GRUB
sudo update-grub

# Reboot laptop
sudo reboot
