#!/bin/sh

export TMPDIR=/vast/bedo.j/tmp

[ ! -e $TMPDIR ] && mkdir -p $TMPDIR

exec ./bin/nix build -j99 --option sandbox relaxed "$@"
