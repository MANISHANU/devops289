
#!/bin/bash

COURSE="Devops"

echo "Before calling other script :$COURSE"
echo "process id of current script :$$"

source ./other-script.sh

echo "After calling other script: $COURSE "
