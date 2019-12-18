#!/bin/bash
# Create a new repository from the command line

touch README.md
git init
git add README.md
git commit -m "first commit"


echo "Please enter your username:"
read gitusername

echo "Please enter the name of your repo:"
read gitreponame

git remote add origin git@github.com:<username>/<reponame>.git
git push -u origin master