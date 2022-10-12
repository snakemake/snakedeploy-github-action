#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
shopt -s extglob

source activate snakedeploy
snakedeploy $1 $2
