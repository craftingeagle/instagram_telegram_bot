#!/bin/bash

# Load configuration variables
source ../config/config.sh

# Read follower count from followers.txt
follower_count=$(cat ../data/followers.txt)

# Read view count from views.txt
view_count=$(cat ../data/views.txt)

# Send notification to Telegram
curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage" -d "chat_id=$CHAT_ID&text=Follower count: $follower_count, View count: $view_count"
