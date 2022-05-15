#!/bin/bash

THEME_DIRNAME=${PWD##*/}

INSTALL_DIR="$HOME/.vscode/extensions/$THEME_DIRNAME/"

echo $INSTALL_DIR

rm -rf $INSTALL_DIR

mkdir -p $INSTALL_DIR

cp -r "./themes/" "$INSTALL_DIR/themes/"
# cp "./.vsixmanifest" "$INSTALL_DIR/.vsixmanifest"
cp "./CHANGELOG.md" "$INSTALL_DIR/CHANGELOG.md"
cp "./package.json" "$INSTALL_DIR/package.json"
cp "./README.md" "$INSTALL_DIR/README.md"

echo "Done."
