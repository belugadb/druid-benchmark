#!/usr/bin/env bash

mkdir -p data
pushd .
cd data

# 1GB data set
curl -O http://static.druid.io/data/benchmarks/tpch/1/lineitem.tbl.gz

# 100GB data set
# (not loading all parts to speedup the benchmark)
for i in $(seq 1 30) ; do
  curl http://static.druid.io/data/benchmarks/tpch/100/lineitem.tbl.$i.gz | zcat >> lineitem.tbl
done

popd
