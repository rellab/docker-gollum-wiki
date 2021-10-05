#!/bin/bash

git config --global user.name "${GOLLUM_USER}"
git config --global user.email ${GOLLUM_EMAIL}

git init
if [ ! $REMOTE_REPOSITORY = "no" ]; then
    git remote add origin $REMOTE_REPOSITORY
    git pull origin $BRANCH
fi

gollum --port ${GOLLUM_PORT} --config /config.rb --lenient-tag-lookup
