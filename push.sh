#!/bin/sh

setup_git() {
  git config --global user.email "mcbplay1@gmail.com"
  git config --global user.name "Bartixxx32"
}

commit_website_files() {
  git checkout master
  git add test2.txt
  git commit -m tylkotest
}

upload_files() {
  git remote add master https://315c94b03156c6167973c581e2f62bdeacfd2ae6@github.com/Bartixxx32/spdtravis.git
  git push --quiet --set-upstream master
}

setup_git
commit_website_files
upload_files
