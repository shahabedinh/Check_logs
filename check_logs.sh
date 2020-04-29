#!/bin/bash

echo "Checking the logs ................................."

## Error
echo "###########################################################################"
echo "Error"
echo "###########################################################################"
grep --color -i  "error" -C 5 $1

# Cause of Reboots

## Shutdown Command
### check if someone ran the shutdown command manually
### COMMAND=/sbin/shutdown
echo "###########################################################################"
echo "Shutdown Command"
echo "###########################################################################/n"
grep --color "/sbin/shutdown -r now" -C 3 $1

## Login Failures
echo "###########################################################################"
echo "Login Failures"
echo "###########################################################################"
grep --color "authentication failure" -C 3 $1

## Detect Memory Problems
#### Out of memory
echo "###########################################################################"
echo "Detect Memory Problems"
echo "###########################################################################"
grep --color -i  "Out of memory\|out_of_memory" -C 5 $1

