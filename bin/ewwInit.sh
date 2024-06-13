#!/bin/sh

# Get the list of connected monitors in JSON format
monitors=$(hyprctl monitors -j)

# Loop through each monitor and dispay the bar for each
index=0
echo "$monitors" | jq -c '.[]' | while read monitor; do
    eww open "workspaceBar${index}"
    index=$((index + 1))
done

