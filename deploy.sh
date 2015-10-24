#!/bin/bash

echo `date`

msg="update:$*"


qrsync qiniu-images.json


cd _posts

sed -i "" 's/javachen\-rs\.qiniudn\.com/7xnrdo\.com1\.z0\.glb.clouddn\.com/g' */*

cd ..

rm -rf _site/*
jekyll build

git add --all ./*
git status
git commit -m "$msg"
git push origin master

cd ../javachen.github.io

rm -rf {20*,page*,*.html,*.xml,*.txt,*.sh}
cp -r ../javachen-blog/_site/* .

git add --all ./*
git commit -m "$msg"
git push origin master

cd ../javachen.gitcafe.io

rm -rf {20*,page*,*.html,*.xml,*.txt,*.sh}
cp -r ../javachen-blog/_site/* .

git add --all ./*
git commit -m "$msg"
git push origin gitcafe-pages

echo `date`
exit 0
