#!/bin/bash

####Special variables in bash scripting####
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"
echo "Process ID: $$"
echo "Exit status of last command: $?"
echo "who is running the script: $USER"
echo "Home directory of the user: $HOME"
sleep 20 &
echo "PID of the last background command: $!"
echo "All the arguments passed to the script as a single string: $*"
echo " the exit status of the last command executed in the background: $?" # very important command

# $@ Vs $* in bash scripting
# $@ treats args as separate quoted strings, while $* treats them as a single string.
#$* treats all the arguments as a single string, while $@ treats each argument as a separate string. This can be useful when you want to pass all the arguments to another command or script, or when you want to iterate over each argument separately.









#echo "Current working directory: $PWD"
#echo "Current shell: $SHELL"
#echo "Current date and time: $(date)"
#echo "Current user: $(whoami)"
#echo "Current hostname: $(hostname)"
#echo "Current IP address: $(hostname -I)"
#echo "Current OS version: $(uname -a)"
#echo "Current kernel version: $(uname -r)"
#echo "Current CPU architecture: $(uname -m)"
#echo "Current memory usage: $(free -h)"
#echo "Current disk usage: $(df -h)"
#echo "Current network usage: $(ifconfig)"
#echo "Current running processes: $(ps aux)"
#echo "Current logged in users: $(who)"
#echo "Current system uptime: $(uptime)"
#echo "Current system load: $(uptime | awk '{print $10}')"



