#!/bin/bash
# Create a new repository from the command line

mkdir gitfolder
cd gitfolder
touch README.md
git init
git add README.md
git commit -m "first commit"

echo "Please enter your username:"
read gitusername

echo "Please enter the name of your repo:"
echo "Note: make sure you already made the repo in GitHub before continuing."
read gitreponame

git remote add origin https://github.com/$gitusername/$gitreponame.git
git push -u origin master