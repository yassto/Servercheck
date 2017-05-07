#!/bin/bash

# Cloud Checker goes here
STRINGdir="$(pwd)"
if [[ $STRINGdir == *"/var/sites"* ]]; then
  echo "$(tput setab 6)"This is the Cloud where nothing is permitted ,fool!"$(tput sgr0)";

else
	STRINGram="This is your RAM usage:"
	echo "$(tput setaf 3)$STRINGram$(tput sgr0)"
	free -m
	echo -en '\n'

	STRINGspace="This is you disk space usage:"
	echo "$(tput setaf 3)$STRINGspace$(tput sgr0)"
	df -h
	echo -en '\n'

	STRINGport="These are your DDoSers:"
	echo "$(tput setaf 3)$STRINGport$(tput sgr0)"
	port80 -i
	echo -en '\n'

	STRINGsql="These are your MySQL processes:"
	echo "$(tput setaf 3)$STRINGsql$(tput sgr0)"
	mysqladmin processlist
	echo -en '\n'

	STRINGuptime="This is your server's uptime:"
	echo "$(tput setaf 3)$STRINGuptime$(tput sgr0)"
	uptime
	echo -en '\n'

	CORES=$(cat /proc/cpuinfo | grep processor | wc | awk '{print $1}')
	echo "$(tput setaf 3)"Your computer only has:" $CORES "cores"$(tput sgr0)"
	echo -en '\n'
fi