#!/bin/bash
# Scripts from Bing AI to help identify distro and installer.

if [[ $(cat /etc/os-release) == *"Ubuntu"* ]]; then
    sudo apt-get install python3
else
    sudo amazon-linux-extras install python3.8
fi


# or

#!/bin/bash

if command -v apt-get &> /dev/null; then
    echo "apt-get is present"
else
    echo "apt-get is not present"
fi
