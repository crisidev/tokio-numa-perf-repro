#!/usr/bin/env bash

source $HOME/.cargo/env
RUSTFLAGS=-Cforce-frame-pointers=yes cargo flamegraph --manifest-path ./axum-get/Cargo.toml
