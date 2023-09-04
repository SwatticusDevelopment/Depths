#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.Depthscore/Depthsd.pid file instead
Depths_pid=$(<~/.Depthscore/testnet3/Depthsd.pid)
sudo gdb -batch -ex "source debug.gdb" Depthsd ${Depths_pid}
