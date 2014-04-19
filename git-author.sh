#!/bin/sh

git filter-branch -f --env-filter '

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "mehul.kar@apple.com" ] || [ "$GIT_COMMITTER_EMAIL" = "mehul.kar@apple.com" ]
then
    cn="rakm"
    cm="rakm@rakm.io"
fi
if [ "$GIT_AUTHOR_EMAIL" = "mehul.kar@apple.com" ] || [ "$GIT_AUTHOR_EMAIL" = "mehul.kar@apple.com" ]
then
    an="rakmr"
    am="rakm@rakm.io"
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'
