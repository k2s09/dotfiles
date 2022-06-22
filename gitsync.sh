#!/bin/bash
# Syncs a github repository two way in a simple script to run with one line
# Add the folder containing this file to PATH for easy access
git add . 
git commit -m "Comitting local changes before merge"
# Stash your local changes
git stash
# Update branch to latest code from remote server
git pull
# Merge your local changes into the latest code
git stash apply
# Add, commit and push local changes to branch
git add . 
git commit -m "Files added on $date"
git push