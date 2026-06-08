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

  # README 날짜 목록에 링크 추가
  sed -i "s|<!-- 최신순 -->|<!-- 최신순 -->\n- [$DATE]($FILE)|" README.md
  echo "README.md 업데이트 완료"
fi

code "$FILE"
