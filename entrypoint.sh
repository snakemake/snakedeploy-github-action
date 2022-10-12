#!/bin/bash
shopt -s extglob

source activate snakedeploy
snakedeploy $1 $2
