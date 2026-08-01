#!/bin/bash

# ===========================================
# Script Name : server_health.sh
# Description : Basic Linux server information
# Author      : Vignesh
# Version     : 1.0
# ===========================================

echo "===================================="
echo "      SERVER HEALTH REPORT"
echo "===================================="

echo "Hostname : "
hostname
echo

echo "User     : "
whoami
echo

echo "Date     : "
date
echo

echo "===== Uptime ====="
uptime

echo
echo "===== Disk Usage ====="
df -h

echo
echo "===== Memory Usage ====="
free -h

echo
echo "===== Current Directory ====="
pwd

echo
echo "Report Completed Successfully."
