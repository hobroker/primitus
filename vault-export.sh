#!/usr/bin/env bash

SECRETS_KEY=${1}
JQ_EXPORT='.data.data | keys[] as $k | "export \($k)=\(.[$k])"'

$(vault read ${SECRETS_KEY} --format=json | jq -r "${JQ_EXPORT}")
