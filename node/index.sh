#!/bin/bash
source_list=(
  "https://registry.npmmirror.com"
  "https://registry.npm.taobao.org"
  "https://mirrors.huaweicloud.com/repository/npm"
  "https://mirrors.cloud.tencent.com/npm"
  "https://npmreg.mirrors.ustc.edu.cn"
)

if ! type npm >/dev/null 2>&1; then
  echo "npm not found"
  exit 1
fi

function get_info() {
  npm info lodash --registry "$1" >/dev/null 2>&1 &
  PID=$!
  sleep 3
  if kill -0 $PID >/dev/null 2>&1; then
    kill -9 $PID
    return 1
  fi
  return 0
}

for source in "${source_list[@]}"; do
  get_info "$source"
  if [ $? -eq 1 ]; then
    echo "$source: failed"
    exit 1
  fi
done
