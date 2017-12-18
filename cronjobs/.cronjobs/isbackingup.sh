#!/usr/bin/env sh

if [  -f /tmp/*.workspacebackup ]; then
    echo "Workspace"
elif [  -f /tmp/*.configsbackup ]; then
    echo "Configs"
elif [  -f /tmp/*.generalbackup ]; then
    echo "General"
elif [  -f /tmp/*.musicbackup ]; then
    echo "Music"
elif [  -f /tmp/*.internalbackup ]; then
    echo "Internal"
elif [  -f /tmp/*.externalbackup ]; then
    echo "External"
else
    echo "No Backups"
fi
