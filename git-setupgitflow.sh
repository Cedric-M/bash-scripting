#!/bin/bash
# Setting up Gitflow Workflow

echo "Setting up Gitflow Workflow:"

git checkout develop

git checkout -b feature develop

git checkout -b release develop

git checkout -b hotfix master


