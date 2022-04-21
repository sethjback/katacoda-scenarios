#!/bin/bash

apt update && apt install -y wget

wget https://github.com/trinsic-id/sdk/releases/download/v1.4.0/trinsic_1.4.0_amd64.deb

dpkg -i trinsic_1.4.0_amd64.deb

rm trinsic_1.4.0_amd64.deb

echo "done" >> /root/katacoda-background-finished