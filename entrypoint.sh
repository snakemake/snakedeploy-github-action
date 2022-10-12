#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
shopt -s extglob

cd $GITHUB_WORKSPACE

echo "activating snakedeploy env"

source activate snakedeploy
echo "running snakedeploy with $1 $2"
snakedeploy $1 $2
snakedeploy --help
