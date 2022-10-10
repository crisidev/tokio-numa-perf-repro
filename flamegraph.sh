#!/usr/bin/env bash

RUSTFLAGS=-Cforce-frame-pointers=yes cargo flamegraph --manifest-path ./axum-get/Cargo.toml
