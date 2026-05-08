#!/bin/bash
# Detecta si Docker Desktop está corriendo

# Docker Desktop corre un proceso llamado "com.docker.backend" o similar
if pgrep -x "com.docker.backend" > /dev/null 2>&1 || \
   pgrep -f "docker-desktop" > /dev/null 2>&1 || \
   systemctl --user is-active docker-desktop > /dev/null 2>&1; then
    echo '{"text": "󰡨", "tooltip": "Docker Desktop corriendo", "class": "running"}'
else
    echo '{"text": "", "tooltip": "", "class": "stopped"}'
fi
