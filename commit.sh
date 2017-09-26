#!/bin/sh

# git push imperfectioin.ru repo to github

dated=`date +%Y-%m-%d-%H%M%S`

# regen 404
#cat assets/404/404.html > 404.html
#cat index.html >> 404.html

# git add

git add .
echo run git push on ${dated}

for i in `git status | grep deleted | awk '{print $2}'`; do git rm $i; done

git commit -m "$dated $(curl -s http://whatthecommit.com/index.txt)"
git push -u origin master

