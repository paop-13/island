#!/bin/bash

if [ $# -ne 1 ]; then
	echo "引数が足りません。"
	echo "Usage: StartInstance.sh [instance-id]" 1>&2
	echo "Usage: StartInstance.sh i-96aa4802" 1>&2
	exit 1
fi

aws ec2 start-instances --instance-ids $1
