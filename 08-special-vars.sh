#!/bin/bash

echo "All variables passed: $@"
echo "Number of variables: $#"
echo "Script name:$0"
echo "Present working directory: $PWD"
echo "home directory of current directory: $HOME"
echo "Which user is running the script: $USER"
echo "Process id of current script: $$"
sleep 60 &
echo "process id of last command in background: $!"