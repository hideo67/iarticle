#!/bin/sh -e

PREVIEW_DIR=~/.local/share/typst/packages/preview
mkdir -p $PREVIEW_DIR/iarticle
ln -s $PWD $PREVIEW_DIR/iarticle/0.1.0
