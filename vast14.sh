#!/bin/bash

# Update package list and install necessary packages

sudo apt update
sleep 5
echo "---------------------------"

sudo apt -y install ocl-icd-opencl-dev
sleep 5
echo "---------------------------"

sudo apt -y install nano
sleep 5
echo "---------------------------"

sudo apt -y install htop
sleep 5
echo "---------------------------"

# sudo apt -y install nvtop
sudo apt -y install cmake
sleep 5
echo "---------------------------"

sudo apt -y install python3-pip
sleep 5
echo "---------------------------"

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
sleep 5
echo "---------------------------"

cd XENGPUMiner
sleep 5
echo "---------------------------"

chmod +x build.sh
sleep 5
echo "---------------------------"

./build.sh
sleep 5
echo "---------------------------"

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0xa757920c4E5909f50C18Cd7e5f191046FCD77067/g' config.conf
sleep 5
echo "---------------------------"

# Install Python requirements
sudo pip install -U -r requirements.txt
sleep 5
echo "---------------------------"

sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d2 > xengpuminer-2.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d3 > xengpuminer-3.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d4 > xengpuminer-4.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d5 > xengpuminer-5.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d6 > xengpuminer-6.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d7 > xengpuminer-7.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d8 > xengpuminer-8.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d9 > xengpuminer-9.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d10 > xengpuminer-10.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d11 > xengpuminer-11.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d12 > xengpuminer-12.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d13 > xengpuminer-13.log 2>&1 &
sleep 5
echo "---------------------------"
