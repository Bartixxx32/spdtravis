#!/bin/sh

setup_git() {
  git config --global user.email "mcbplay1@gmail.com"
  git config --global user.name "Bartixxx32"
}

commit_website_files() {
  cd travistest
  mv one/* travistest/
  git checkout master
  touch test.txt
  touch test1.txt
  touch test2.txt
  touch test3.txt
  git add . *.txt
  git commit --m testtravis
}

upload_files() {
  git remote add master https://${secret}@github.com/Bartixxx32/spdtravis.git > /dev/null 2>&1
  git push --quiet --set-upstream master
}

setup_git
commit_website_files
upload_files
