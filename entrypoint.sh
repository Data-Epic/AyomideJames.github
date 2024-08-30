#!/bin/bash
set -e 
echo "Open the application..."
python src/api.py 
tail -f /dev/null
