#!/bin/bash

# Fix all README files with correct Homebrew installation command

REPO_DIR="."

# English
sed -i '' '/^* Using Node.js installation/a\
\
* Using Homebrew (macOS only)\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README.md"

# Chinese
sed -i '' '/^* 使用Node.js安装/a\
\
* 使用Homebrew（仅限macOS）\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README_CN.md"

# Japanese
sed -i '' '/^### Installation Commands$/,/^## 🗑️/ {
  s/brew install iflow-ai\/tap\/iflow-cli/brew install iflow-ai\/iflow-cli/g
}' "$REPO_DIR/README_JA.md"
# Remove duplicate Homebrew section in Japanese
sed -i '' '/^* Homebrewを使用（macOSのみ）/,/^```$/{
  /```shell/,/^```$/d
}
/^* Homebrewを使用（macOSのみ）/d' "$REPO_DIR/README_JA.md"
# Add correct Homebrew section after Node.js
sed -i '' '/^* Node.jsを使用したインストール/a\
\
* Homebrewを使用（macOSのみ）\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README_JA.md"

# Korean
sed -i '' '/^* Node.js를 사용한 설치/a\
\
* Homebrew 사용 (macOS 전용)\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README_KO.md"

# French
sed -i '' '/^* Installation avec Node.js/a\
\
* Utilisation de Homebrew (macOS uniquement)\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README_FR.md"

# German
sed -i '' '/^* Mit Node.js installieren/a\
\
* Mit Homebrew (nur macOS)\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README_DE.md"

# Spanish
sed -i '' '/^* Instalación con Node.js/a\
\
* Usando Homebrew (solo macOS)\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README_ES.md"

# Russian
sed -i '' '/^* Установка с помощью Node.js/a\
\
* Использование Homebrew (только для macOS)\
```shell\
brew install iflow-ai/iflow-cli\
```' "$REPO_DIR/README_RU.md"

echo "All README files updated with correct Homebrew installation command!"