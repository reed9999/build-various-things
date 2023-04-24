#!/bin/bash
touch /var/log/FILE_ONE.log
echo "This is File 2" > /var/log/file_two.log


# just in case the above isn't something that would show up....

mkdir -p /home/ubuntu/userdataran
mkdir -p /home/ec2-user/userdataran
echo "It ran" > /home/ubuntu/userdataran/it_ran.txt
echo "It ran" > /home/ec2-user/userdataran/it_ran.txt