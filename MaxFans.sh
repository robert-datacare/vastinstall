#!/bin/bash
nvidia-settings -a GPUFanControlState=1
nvidia-settings -a GPUTargetFanSpeed=98
nvidia-smi -pm =1
echo "Max Fan Speed Added"
