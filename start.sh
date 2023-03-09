#!/bin/bash

since=$1
users=(${@:2})
for user in "${users[@]}"; do
  echo snscrape -v --jsonl twitter-search "(from:${user}) include:nativeretweets since:${since}"
  echo snscrape -v --jsonl twitter-search "(to:${user}) since:${since}"
done

echo ">>>>  END OF SCRAPING $(date +%Y-%m-%d) <<<<"