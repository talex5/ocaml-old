#!/bin/sh
unset BUILDDIR
if [ "$OS" = "Windows_NT" ];then
        cp config/m-nt.h config/m.h
        cp config/s-nt.h config/s.h
        cp config/Makefile.mingw config/Makefile

	DISTDIR=`cygpath "$DISTDIR"`
	make -f Makefile.nt ziruntime PREFIX="$DISTDIR"
else
	# (note: we use -libdir to match the Windows layout)
	$SRCDIR/configure -no-tk -no-graph -prefix "$DISTDIR" -libdir "$DISTDIR/lib"
	make ziruntime
fi
