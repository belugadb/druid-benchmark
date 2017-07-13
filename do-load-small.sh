#!/usr/bin/env bash

## Single instance cluster with overlord running on port 8090
./load-druid.sh "127.0.0.1:8090" lineitem_small.task.json
