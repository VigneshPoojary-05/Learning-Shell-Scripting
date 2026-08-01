#!/bin/bash

echo "Check whether a command is built-in or external"
echo "***********************************************"
echo "cd is: $(type -t cd) command and info $(type cd)"
echo
echo "ls is: $(type -t ls) command and info $(type ls)"
echo
echo "bash is: $(type -t bash) command and info $(type bash)"
echo
echo "pwd is: $(type -t pwd) command and info $(type pwd)"
