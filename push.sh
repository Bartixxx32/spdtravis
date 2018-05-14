#!/bin/sh

setup_git() {
  git config --global user.email "mcbplay1@gmail.com"
  git config --global user.name "Bartixxx32"
}

commit_website_files() {
  git checkout master
  git add . test2.txt
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote -v
  git remote add master git remote add master https://b86d87e769348eb2c1ed3f508f726479ea767dcf@github.com/Bartixxx32/spdtravis.git
  git push --quiet --set-upstream master
}

setup_git
commit_website_files
upload_files
