#!/bin/bash

# get script folder, see http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

docker build -t ddliu/ubuntu:latest $DIR