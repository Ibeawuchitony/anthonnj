#!/bin/bash
echo "---- System Information ----"
echo "HostName: $(hostname)"
echo "OS Version: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')"
echo "Memory Information:"
free -h
echo "Uptime Information:"
uptime -p
