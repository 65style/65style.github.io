#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd .vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git remote add origin https://github.com/65style/65style.github.io.git
git checkout gh-pages
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f origin gh-pages

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -