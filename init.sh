#!/bin/bash

# 判断 /data 目录是否存在，不存在则创建
if [ ! -d "/data" ]; then
  mkdir /data
fi

# 创建 cicd 和 dnmp 目录
mkdir /data/cicd
mkdir /data/dnmp
