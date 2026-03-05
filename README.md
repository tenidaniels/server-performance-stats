# Server Performance Stats Script

This project is a simple Linux bash script that analyzes server performance statistics.

## Project URL
https://roadmap.sh/projects/server-stats

## Features

- Total CPU usage
- Memory usage (Used vs Free with percentage)
- Disk usage
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- OS version
- System uptime
- Load average
- Logged in users

## Requirements

Linux server with standard utilities:

- top
- ps
- free
- df
- awk

## How to Run

Clone the repository:

git clone https://github.com/tenidaniels/server-performance-stats.git

Go to the directory:

cd server-performance-stats

Make the script executable:

sudo chmod +x server-stats.sh

Run the script:

./server-stats.sh
