AUTOMAKE_OPTIONS = subdir-objects
AM_CPPFLAGS = -Wshadow -Wall -pedantic

bin_PROGRAMS = dmtxread dmtxRGBread
noinst_PROGRAMS = dmtxread.debug dmtxRGBread.debug

dmtxread_SOURCES = dmtxread.c dmtxread.h ../common/dmtxutil.c ../common/dmtxutil.h
dmtxread_CFLAGS = $(DMTX_CFLAGS) $(MAGICK_CFLAGS) -D_MAGICK_CONFIG_H
dmtxread_LDFLAGS = $(DMTX_LIBS) $(MAGICK_LIBS)
dmtxread_LDADD = $(LIBOBJS)

dmtxread_debug_SOURCES = dmtxread.c dmtxread.h ../common/dmtxutil.c ../common/dmtxutil.h
dmtxread_debug_CFLAGS = $(DMTX_CFLAGS) $(MAGICK_CFLAGS) -D_MAGICK_CONFIG_H
dmtxread_debug_LDFLAGS = -static $(DMTX_LIBS) $(MAGICK_LIBS)
dmtxread_debug_LDADD = $(LIBOBJS)

dmtxRGBread_SOURCES = dmtxRGBread.c dmtxread.h ../common/dmtxutil.c ../common/dmtxutil.h
dmtxRGBread_CFLAGS = $(DMTX_CFLAGS) $(MAGICK_CFLAGS) -D_MAGICK_CONFIG_H
dmtxRGBread_LDFLAGS = $(DMTX_LIBS) $(MAGICK_LIBS)
dmtxRGBread_LDADD = $(LIBOBJS)

dmtxRGBread_debug_SOURCES = dmtxRGBread.c dmtxread.h ../common/dmtxutil.c ../common/dmtxutil.h
dmtxRGBread_debug_CFLAGS = $(DMTX_CFLAGS) $(MAGICK_CFLAGS) -g -ggdb3 -O0  -D_MAGICK_CONFIG_H
dmtxRGBread_debug_LDFLAGS = -static $(DMTX_LIBS) $(MAGICK_LIBS)
dmtxRGBread_debug_LDADD = $(LIBOBJS)
