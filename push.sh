#!/bin/sh

setup_git() {
  git config --global user.email "mcbplay1@gmail.com"
  git config --global user.name "Bartixxx32"
}

commit_website_files() {
  git checkout master
  git add test2.txt
  git commit -m tylkotest

setup_git
commit_website_files
