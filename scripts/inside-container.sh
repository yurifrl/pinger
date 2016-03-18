#!/bin/sh

echo "scripts/$1.sh"
if [ -f "scripts/$1.sh" ]; then
  echo "-----> Runnig scripts/$1.sh"
  /bin/sh scripts/$1.sh
else
  echo "-----> Runnig $@"
  $@
fi
