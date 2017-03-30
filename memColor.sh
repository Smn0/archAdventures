#!/bin/bash

memory=$(free -m | awk 'NR==2{printf "%.0f",$3*100/$2 }')
lua ~/themes/conky/harmattanClear/.harmattan-assets/scripts/cpuMemColor.lua $memory
