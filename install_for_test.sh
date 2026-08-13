#!/bin/sh -e

# Registers this checkout as @preview/iarticle:<version> for local
# testing (samples/, template/), reading <version> from typst.toml so
# it never drifts out of sync with a version bump there.
cd "$(dirname "$0")"

VERSION=$(sed -n 's/^version = "\(.*\)"$/\1/p' typst.toml)

PREVIEW_DIR=~/.local/share/typst/packages/preview
mkdir -p $PREVIEW_DIR/iarticle
ln -sf $PWD $PREVIEW_DIR/iarticle/$VERSION
