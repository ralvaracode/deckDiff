# This script compares two decks and shows the differences between them
# Example usage:
# ./compare_decks.sh HEAD~1 HEAD GF_PandaBurn.xml

#!/bin/bash

OLD_COMMIT_HASH="$1"
NEW_COMMIT_HASH="$2"
FILE_NAME="$3"

if [[ -z "$OLD_COMMIT_HASH" || -z "$NEW_COMMIT_HASH" || -z "$FILE_NAME" ]]; then
  echo "Usage: $0 <OLD_COMMIT_HASH> <NEW_COMMIT_HASH> <FILE_NAME>"
  exit 1
fi

git show "$OLD_COMMIT_HASH":"$FILE_NAME" | grep '<card' | sed 's/[ \t]*$//' | sort > /tmp/old.txt
git show "$NEW_COMMIT_HASH":"$FILE_NAME" | grep '<card' | sed 's/[ \t]*$//' | sort > /tmp/new.txt
diff /tmp/old.txt /tmp/new.txt


