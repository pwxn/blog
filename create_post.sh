#!/bin/bash
   TITLE=$1
   DATE=$(date +%F)
   SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
   FILENAME="${DATE}-${SLUG}.md"
   touch "docs/blog/$FILENAME"
   echo "# $TITLE" > "docs/blog/$FILENAME"