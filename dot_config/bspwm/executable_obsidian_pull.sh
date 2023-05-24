#!/usr/bin/env sh

if [ -n "${OBSIDIAN_DIR+1}" ] && [ -d $OBSIDIAN_DIR ]; then
  cd $OBSIDIAN_DIR
  git pull -q 
else
  echo "\$OBSIDIAN_DIR is not set or \$OBSIDIAN_DIR not exist"
  exit 1
fi

exit 0
