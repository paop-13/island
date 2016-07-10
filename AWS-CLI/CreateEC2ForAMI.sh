#!/bin/bash

if [ $# -ne 6 ]; then
	echo "引数が足りません。"
	echo "Usage: CreateEC2ForAMI.sh [image-id] [count] [instance-type] [key-name] [security-group-ids]  [subnet-id]" 1>&2
	echo "Usage: CreateEC2ForAMI.sh ami-3ae92a5a 1 t2.micro test-key sg-6eb1dd08 subnet-9f07b3e8" 1>&2
	exit 1
fi

aws ec2 run-instances --image-id $1 --count $2 --instance-type $3 --key-name $4 --security-group-ids $5 --subnet-id $6
exit 0
