#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
shopt -s extglob

cd $GITHUB_WORKSPACE

echo "activating snakedeploy env"

source activate snakedeploy
echo "running snakedeploy with $1 $2"
pip install git+https://github.com/snakemake/snakedeploy.git@dbg/env-update
snakedeploy $1 $2
snakedeploy --help
