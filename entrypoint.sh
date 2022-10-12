#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
shopt -s extglob

cd $GITHUB_WORKSPACE

source activate snakedeploy
echo "snakedeploy $1 $2"
ls -l
pip install git+https://github.com/snakemake/snakedeploy.git@dbg/env-update
eval "snakedeploy $1 $2"
