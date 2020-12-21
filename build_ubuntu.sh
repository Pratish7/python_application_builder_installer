#!/bin/bash
sudo apt install python3-pip
pip3 install pyinstaller
prog_dir=${PWD}
work_dir="/home/$USER/.program_name"
mkdir $work_dir
cd $work_dir
pyinstaller $prog_dir/program_name.py
echo -e "[Desktop Entry]
Name=group\ mail
Comment=A short description of the application
Exec='$work_dir/dist/program_name/program_name'
Terminal=false
Type=Application
Icon=''" >> ~/.local/share/applications/program_name.desktop