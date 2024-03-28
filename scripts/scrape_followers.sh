#!/bin/bash

# Load configuration variables
source ../config/config.sh

# Scrape follower count from Instagram
follower_count=$(curl -s -H "Authorization: Bearer $INSTAGRAM_TOKEN" https://api.instagram.com/v1/users/self | jq -r '.data.counts.followed_by')

# Update followers.txt with the scraped count
echo "$follower_count" > ../data/followers.txt
