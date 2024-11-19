#!/bin/bash
echo "Start migrating innv-site..."
cd /opt/innv-site/current
docker load -i ~/$(date '+%y%m%d')-innv-site.tar
docker compose down && docker compose up -d
rm ~/$(date '+%y%m%d')-innv-site.tar
echo "Successfully migrated."
