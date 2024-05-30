#!/bin/bash

# Execute the first script
./3-stopdockercontainers.sh
if [ $? -ne 0 ]; then
  echo "script1.sh failed"
  exit 1
fi

# Execute the second script
./4-rmalldockercontainers.sh
if [ $? -ne 0 ]; then
  echo "script2.sh failed"
  exit 1
fi

# Execute the third script
./5-rmalldockerimages.sh
if [ $? -ne 0 ]; then
  echo "script3.sh failed"
  exit 1
fi

echo "All scripts executed successfully"

