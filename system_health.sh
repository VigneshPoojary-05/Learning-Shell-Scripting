#!/bin/bash

echo "========================================="
echo "        SYSTEM HEALTH REPORT"
echo "========================================="
echo

hostname=$(hostname)

user=$(whoami)

current_date=$(date)

uptime_info=$(uptime -p)

disk=$(df -h / | awk 'NR==2 {gsub("%",""); print $5}')

memory=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2*100}')

echo "Hostname      : $hostname"
echo "Current User  : $user"
echo "Date          : $current_date"

echo

echo "Uptime"
echo "-------"
echo "$uptime_info"

echo

echo "Disk Usage"
echo "----------"

echo "Used : $disk%"

if [ "$disk" -gt 80 ]
then
    echo -e "Status : \e[31mWARNING!\e[0m"
else
    echo -e "Status : \e[32mHealthy\e[0m"
fi

echo

echo "Memory Usage"
echo "------------"

echo "Used : $memory%"

if [ "$memory" -gt 80 ]
then
    echo -e "Status : \e[31mWARNING!\e[0m"
else
    echo -e "Status : \e[32mHealthy\e[0m"
fi

echo

echo "Internet"
echo "---------"

if ping -c 1 google.com >/dev/null 2>&1
then
    echo -e "\e[32mConnected\e[0m"
else
    echo -e "\e[31mDisconnected\e[0m"
fi

echo

echo "SSH Service"
echo "-----------"

if systemctl is-active --quiet ssh
then
    echo -e "\e[32mRunning\e[0m"
else
    echo -e "\e[31mStopped\e[0m"
fi

echo
echo "========================================="
echo "Report Completed"
echo "========================================="
