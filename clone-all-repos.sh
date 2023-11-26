#!/bin/bash

mkdir repositorios
cd repositorios

repositorios=$(curl -s https://api.github.com/users/Michel172002/repos | awk '/ssh_url/{print $2}' | sed 's/^"//g' | sed 's/",$//g')

for repo in $repositorios
do
	git clone $repo
done
