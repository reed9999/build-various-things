#!/bin/bash
# Scripts from Bing AI to help identify distro and installer.
# Use BVT prefix for "build various things" to avoid namespace pollution

get_distro() {
    if [[ $(cat /etc/os-release) == *"Ubuntu"* ]]; then
        echo "ubuntu"
    else
        echo "amazon-linux"
    fi
}


get_installer_name() {
    if command -v apt-get &> /dev/null; then
        echo "apt-get"
    else 
        # Assume Amazon Linux for the moment.
        # I've not used amazon-linux-extras but Bing AI suggested it
        # Fall back to yum if needed.
        echo "amazon-linux-extras"
    fi
}

export BVT_DISTRO=$(get_distro)
export BVT_INSTALLER=$(get_installer_name)
