#!/bin/bash -l
   
#SBATCH --partition=cpu-opteron
#SBATCH --job-name=rclone
#SBATCH --output=%x.out
#SBATCH --error=%x.err
#SBATCH --nodes=1
#SBATCH --mem=1G
#SBATCH --ntasks=1
#SBATCH --qos=normal
  
module load rclone
 
# Your rclone command here

#rclone ls --drive-shared-with-me "My Google Drive:"
rclone sync "My Google Drive:/b3lyp_2017.tar" /lustre/project/materialdesign/b3lyp_2017/
