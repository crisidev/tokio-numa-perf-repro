# tokio-numa-perf-repro

Reproduction repo for https://github.com/tokio-rs/tokio/issues/5076

## Setup Ubuntu instance

```sh
./setup.sh
```

## Run the POC

```sh
./flamegraph.sh
```

## Run benchmark

```sh
wrk -t16 -c1024 -d10s --latency http://localhost:3000/
```
