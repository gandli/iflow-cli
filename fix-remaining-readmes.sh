#!/bin/bash

# 修正剩余语言版本的README文件
cd /Users/user/.openclaw/workspace/iflow-cli-pr

# 日文版本 - README_JA.md
sed -i '' 's|\* Node\.jsを使用したインストール\n\n\* Homebrewを使用（macOSのみ）\n```shell\nbrew install iflow-ai/iflow-cli\n```\n\n```shell\nnpm i -g @iflow-ai/iflow-cli\n```|\* Node.jsを使用したインストール\n```shell\nnpm i -g @iflow-ai/iflow-cli\n```\n\n* Homebrewを使用（macOSのみ）\n```shell\nbrew install iflow-ai/iflow-cli\n```|' README_JA.md

# 韩文版本 - README_KO.md  
sed -i '' '/\*\ Node\.js를\ 사용한\ 설치/,+3d' README_KO.md
# 在Node.js安装命令后插入Homebrew命令
awk '/\*\ Node\.js를\ 사용한\ 설치/{print; print "```shell"; print "npm i -g @iflow-ai/iflow-cli"; print "```"; print ""; print "* Homebrew 사용 (macOS 전용)"; print "```shell"; print "brew install iflow-ai/iflow-cli"; print "```"; next}1' README_KO.md > temp_ko.md && mv temp_ko.md README_KO.md

# 法文版本 - README_FR.md
awk '/\*\ Installation\ avec\ Node\.js/{print; print "```shell"; print "npm i -g @iflow-ai/iflow-cli"; print "```"; print ""; print "* Utilisation de Homebrew (macOS uniquement)"; print "```shell"; print "brew install iflow-ai/iflow-cli"; print "```"; next}1' README_FR.md > temp_fr.md && mv temp_fr.md README_FR.md

# 德文版本 - README_DE.md
awk '/\*\ Mit\ Node\.js\ installieren/{print; print "```shell"; print "npm i -g @iflow-ai/iflow-cli"; print "```"; print ""; print "* Mit Homebrew (nur macOS)"; print "```shell"; print "brew install iflow-ai/iflow-cli"; print "```"; next}1' README_DE.md > temp_de.md && mv temp_de.md README_DE.md

# 西班牙文版本 - README_ES.md
awk '/\*\ Instalación\ con\ Node\.js/{print; print "```shell"; print "npm i -g @iflow-ai/iflow-cli"; print "```"; print ""; print "* Usando Homebrew (solo macOS)"; print "```shell"; print "brew install iflow-ai/iflow-cli"; print "```"; next}1' README_ES.md > temp_es.md && mv temp_es.md README_ES.md

# 俄文版本 - README_RU.md  
awk '/\*\ Установка\ с\ помощью\ Node\.js/{print; print "```shell"; print "npm i -g @iflow-ai/iflow-cli"; print "```"; print ""; print "* Использование Homebrew (только для macOS)"; print "```shell"; print "brew install iflow-ai/iflow-cli"; print "```"; next}1' README_RU.md > temp_ru.md && mv temp_ru.md README_RU.md

echo "All remaining README files updated!"