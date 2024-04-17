#!/bin/bash

echo "All variables :: $@"
echo "Number of variables passed :: $#"
echo "Script name :: $0 "
echo "Current working directory :: $PWD "
echo "Home directory of current user :: $HOME "
echo "Which user is running the script :: $USER "
echo "Host Name :: $HOSTNAME "
echo "Process id of current shell script :: $$ "
sleep &
echo "Process id of last back ground command :: $! "