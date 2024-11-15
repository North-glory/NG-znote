#!/usr/bin/env sh
 
# ȷ���ű��׳������Ĵ���
set -e
 
# ���ɾ�̬�ļ� , yarn docs:build
npm run build
rm -rf ../blog/dist/*

# ��build���ɵ�distĿ¼��������һ��Ŀ¼��
cp -rf docs/.vuepress/dist ../blog/

# �������ɵ��ļ���
cd ../blog/dist

# git��ʼ����ÿ�γ�ʼ����Ӱ������

git init
git add -A
git commit -m '$1'
git branch -M main

# �������Ҫ���� https://USERNAME.github.io
git push -f git@github.com:North-glory/North-glory.github.io.git main