#!/bin/bash

if [ $# -ne 1 ]; then
	echo "引数が足りません。"
	echo "Usage: StopInstance.sh [instance-id]" 1>&2
	echo "Usage: StopInstance.sh i-96aa4802" 1>&2
	exit 1
fi

aws ec2 stop-instances --instance-ids $1
