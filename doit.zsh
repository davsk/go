!#!/bin/zsh

# "doit.zsh"
# by David Lynn Skinner
# for Davsk Ltd Co

# Doit script executes twist to update pages based on YML and pushes changes.

# Twist
twist -c twist.yml -o docs -readme
