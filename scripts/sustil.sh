#!/bin/bash

# sustil.sh
# Suspend until given time
sudo rtcwake -m mem -t $(date --date=$1 +%s)