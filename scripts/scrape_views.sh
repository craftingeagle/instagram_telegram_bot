#!/bin/bash

# Load configuration variables
source ../config/config.sh

# Scrape view count from Instagram
view_count=$(curl -s -H "Authorization: Bearer $INSTAGRAM_TOKEN" https://api.instagram.com/v1/users/self/media/recent | jq -r '.data | map(.likes.count) | add')

# Update views.txt with the scraped count
echo "$view_count" > ../data/views.txt
