#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
shopt -s extglob

cd $GITHUB_WORKSPACE

source activate snakedeploy
eval "snakedeploy $1 $2"
