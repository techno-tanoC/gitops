#!/bin/sh

git config --global user.name "${GITHUB_USER}"
git config --global user.email "${GITHUB_EMAIL}"

mkdir ~/.config
echo "
github.com:
- protocol: https
  user: ${GITHUB_USER}
  oauth_token: ${GITHUB_TOKEN}
" > ~/.config/hub
