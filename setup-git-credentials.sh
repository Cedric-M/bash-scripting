#!/bin/bash
# Setting up Git credentials. 
# Usage: ./<scriptfilename>

echo "Setting up Git credentials"

#checking if git is installed
git --version

echo "Please enter your username:"
read gitusername
git config --global user.name «$gitusername»

echo "Please enter the email address related to your GitHub account:"
read gitemail
git config --global user.email «$gitemail»

echo "Git credentials successfully recorded."
#to see changes:
#git config --global --edit

