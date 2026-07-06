#!/bin/bash
echo "=============================="
echo "  Server Health Check v2.0   "
echo "=============================="
echo "Date     : $(date)"
echo "Hostname : $(hostname)"
echo "Uptime   : $(uptime | awk -F'up ' '{print $2}' | awk -F',' '{print $1}')"
echo "Disk     : $(df -h / | tail -1 | awk '{print $5}') used"
echo "=============================="
