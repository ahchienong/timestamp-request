#!/bin/bash
echo "test message" > test.txt
echo "[1] create test message"

openssl dgst -sha3-256 test.txt > test.digest
echo "[2] get digest"

DIGEST=`sed -e 's#.*= \(\)#\1#' <<< cat test.digest`
echo "digest:" $DIGEST

echo "[3] create timestamp request binary : ts_req.tsq"
cmd="openssl ts -query -digest '$DIGEST' -sha256 -cert -out ts_req.tsq"

eval "$cmd"
