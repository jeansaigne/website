#!/bin/bash

if [ "$TRAVIS_BRANCH" != "master" ]; then
  echo "We're not on the master branch."
  # analyze current branch and react accordingly
  exit 0
fi
