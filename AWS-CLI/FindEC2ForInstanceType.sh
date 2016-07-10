#!/bin/bash

if [ $# -ne 1 ]; then
	echo "引数が足りません。"
	echo "Usage: FindEC2ForInstanceType.sh [instance-type]" 1>&2
	echo "Usage:  t2.micro" 1>&2
	exit 1
fi

aws ec2 describe-instances --filters "Name=instance-type, Values = $1"
