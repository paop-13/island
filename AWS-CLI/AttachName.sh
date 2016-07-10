#!/bin/bash

if [ $# -ne 2 ]; then
	echo "引数が足りません。"
	echo "Usage: CreateTags.sh [instance-id] [Name]" 1>&2
	echo "Usage: CreateTags.sh i-96aa4802 test-paop" 1>&2
	exit 1
fi

aws ec2 create-tags --resources $1 --tags Key=Name,Value=$2
