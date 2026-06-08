#!/bin/bash

DATE=$(date +%Y-%m-%d)
FILE="$DATE.md"

if [ -f "$FILE" ]; then
  echo "이미 존재함: $FILE — 그냥 열게요"
else
  cat > "$FILE" << EOF
# $DATE

## 오늘 한 것


## 새로 알게 된 것


## 메모 / 링크

EOF
  echo "생성: $FILE"
fi

code "$FILE"
