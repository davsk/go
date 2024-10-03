!#!/bin/zsh

# "doit.zsh"
# by David Lynn Skinner
# for Davsk Ltd Co

# Doit script executes twist to update pages based on YML and pushes changes.

# Twist
if [ ! -x $(whence -p twist) ]; then
   go install go.bobheadxi.dev/twist@latest
fi

twist -c twist.yml -o docs -readme

# Deploy
git add *
git commit -a -m "Update"
git push
