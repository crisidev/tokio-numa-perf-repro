#!/usr/bin/env bash

# apt packages
sudo apt-get update
sudo apt-get install -y build-essential htop wrk linux-tools-common linux-tools-generic linux-tools-$(uname -r)

# configure kernel
echo -1 | sudo tee /proc/sys/kernel/perf_event_paranoid
echo 0 | sudo tee /proc/sys/kernel/kptr_restrict

# unattended rustup install
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

# install flamegraph
cargo install flamegraph
