#!/bin/bash

if [ $# -ne 3 ]; then
	echo "引数が足りません。"
	echo "Usage: CreateAMI.sh [instance-id] ["AMI-name"] ["description"]" 1>&2
	echo "Usage: CreateAMI.sh i-96aa4802 "Test-EC2-20160708" "testBackup"" 1>&2
	exit 1
fi

aws ec2 create-image --instance-id $1 --name $2 --description $3
