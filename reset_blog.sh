#!/bin/zsh
# reload all articles from Notion repository
git pull
elog clean
git add .
git commit -m "[Up] elog clean"
git push