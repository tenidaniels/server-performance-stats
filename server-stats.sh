#!/bin/bash

echo "=========SERVER PERFORMANCE STATS============="
echo ""

echo "-----------CPU USAGE-------------"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "Total CPU Usage: $CPU_USAGE %"
echo ""

echo "-----------Memory Usage---------"
Total_MEM_USAGE=$(free -m | awk '/Mem:/ {print $2}')

USED_MEM=$(free -m | awk '/Mem:/ {print $3}')

FREE_MEM=$(free -m | awk '/Mem:/ {print $4}')

MEM_PERCENT=$(awk "BEGIN {printf \"%.2f\", ($USED_MEM/$Total_MEM_USAGE)*100}")
echo "Total Memory: ${Total_MEM_USAGE} MB"
echo "Used Memory : ${USED_MEM} MB"
echo "Free Memory : ${FREE_MEM} MB"
echo "Memory Usage: ${MEM_PERCENT}%"
echo ""

echo "-----Disk Usage------"
df -h /
echo ""

echo "----------Top 5 by  cpu usage ------------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

echo "-----------Top 5 by memory usage---------"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=%mem | head | head -n 6
echo ""

echo "---------Os version-------------"
cat /etc/os-release
echo ""

echo "-----------System uptime----------"
uptime
echo ""

echo "-------------Load Average----------"
cat /proc/loadavg
echo ""

echo "--------------Logged in Users---------"
who
