#!/bin/bash

if pgrep -x wlogout > /dev/null; then
  pkill -x wlogout
  while pgrep -x wlogout > /dev/null; do
    sleep 0.1
  done
else
  wlogout --buttons-per-row 2
fi