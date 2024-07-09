#!/usr/bin/env bash


# Install the required packages

if [ -e build ]; then
    echo "Build directory already exists\nStarting the build process..."

else
    mkdir build
    echo "Build directory created\nStarting the build process..."
fi



# Install the required packages

install_dependency() {
    source /etc/os-release
    if [ $ID == "arch"] then;
        echo "Arch Linux detected"
        sudo pacman -S --noconfirm --needed cmake extra-cmake-modules 
    else if [ $ID == "ubuntu"] then;
        echo "Ubuntu detected"
        sudo apt-get install -y cmake 
    else if [ $ID == "fedora"] then;
        echo "Fedora detected"
        sudo dnf install -y cmake 
    else
        echo "Unsupported OS\n Please install dependencies manually first."
    fi
}

install_dependency



# Bulding

cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
make && make install