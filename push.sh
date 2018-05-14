#!/bin/sh

setup_git() {
  git config --global user.email "mcbplay1@gmail.com"
  git config --global user.name "Bartixxx32"
}

commit_website_files() {
  git checkout -b master
  git add . test.txt
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${TEST}@github.com/Bartixxx32/spdtravis.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-master master
}

setup_git
commit_website_files
upload_files
