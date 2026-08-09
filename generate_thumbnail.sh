#!/bin/sh -e

# Generates thumbnail.png at the package root, as referenced by
# typst.toml's [template].thumbnail field. Per the Typst package spec,
# that file must:
#  - live at the package root (not inside template/, even though the
#    thing it depicts is template/main.typ)
#  - depict one of the pages of the template as `typst init` would
#    produce it - so this renders template/main.typ itself, not some
#    other sample
#  - not be referenced anywhere else in the package (it isn't - only
#    typst.toml points to it, and Typst excludes it from the published
#    package files automatically)
#  - be a PNG (or lossless WebP) with a longer edge >= 1080px and a
#    file size <= 3MB - the default 144 PPI comfortably clears 1080px
#    on a standard page size, so no extra flags are needed for that
#
# Requires the local checkout to already be registered as
# @preview/iarticle, since template/main.typ imports itself that way -
# run install_for_test.sh first if you haven't.

cd "$(dirname "$0")"

typst compile template/main.typ thumbnail.png --pages 1

echo "Wrote thumbnail.png ($(du -h thumbnail.png | cut -f1))"
