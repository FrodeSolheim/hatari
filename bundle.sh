#!/bin/sh

set -e

. fsbuild/plugin.pre.sh

mkdir -p $PLUGIN_BINDIR
cp hatari$EXE $PLUGIN_BINDIR

mkdir -p $PLUGIN_READMEDIR
cp README.md $PLUGIN_READMEDIR/ReadMe.txt

mkdir -p $PLUGIN_LICENSESDIR
cp \
	fsbuild/_build/hatari-src/gpl.txt \
	$PLUGIN_LICENSESDIR/Hatari.txt

. fsbuild/plugin.post.sh
