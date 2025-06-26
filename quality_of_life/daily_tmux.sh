#!/bin/bash

# This script set up a tmux session with preconfigured windows
# You can use it by setting an alias in bashrc, e.g. `alias work=<path to script>`
# so that with one command in terminal, you can get EVERYTHING setup :)

SESSION_NAME="my_session"

# Note: Don't use "~/workspace" since tilde won't expand in quote
SESSION_PATH="$HOME/workspace/"

# Create a new detached session (detached b/c we wanna make changes first)
# -d: The session will be detached, i.e. runs in the background
# -s: session name
# -c: start directory
# -n: window name
NV_WORKSPACE_NAME="nv-ws"
tmux new-session -d -s "$SESSION_NAME" -c "$SESSION_PATH" -n "$NV_WORKSPACE_NAME"

# Send key to a specific window. E.g. open an editor
# -t: target pane
tmux send-keys -t "$SESSION_NAME":"$NV_WORKSPACE_NAME" "nv ." C-m

# Create another window
tmux new-window -t "$SESSION_NAME" -c "$SESSION_PATH" -n "ws"

tmux select-window -t "$SESSION_NAME":"$NV_WORKSPACE_NAME"

# Attach to session
tmux attach-session -t "$SESSION_NAME"
