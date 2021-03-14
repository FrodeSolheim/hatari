uname := $(shell uname -a)
ifneq ($(findstring Msys,$(uname)),)
exe = .exe
else
exe =
endif

srcdir = fsbuild/_build/hatari-src

all: build hatari${exe} tos.img

build:
	make -C ${srcdir}

hatari${exe}: ${srcdir}/src/hatari${exe}
	cp ${srcdir}/src/hatari${exe} hatari${exe}

tos.img: ${srcdir}/src/tos.img
	cp ${srcdir}/src/tos.img tos.img

clean:
	if [ -d ${srcdir} ]; then \
		make -C ${srcdir} clean; fi
	rm -f hatari${exe}
