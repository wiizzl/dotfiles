#!/bin/bash

if pgrep -x wlogout > /dev/null; then
  pkill -x wlogout
else
  wlogout --buttons-per-row 2
fi