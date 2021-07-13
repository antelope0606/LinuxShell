#!/bin/bash
# setup env
echo Before path is "$PATH"
export PATH=$(pwd):"$PATH"
echo After  path is "$PATH"
