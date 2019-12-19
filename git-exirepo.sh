#!/bin/bash
# Push an existing git repository from the command line


echo "Please write down the path of the existing folder you wanna push:"
read gitpathfolder

cd $gitpathfolder

git init

touch .gitignore

git add .
git commit -m "first commit"

echo "Please enter your username:"
read gitusername

echo "Please enter the name of your repo:"
read gitreponame

git remote add origin https://github.com/$gitusername/$gitreponame.git
git push -u origin master
