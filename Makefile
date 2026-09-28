.DEFAULT_GOAL := all
export srctree := $(CURDIR)
CC := gcc
AR := ar
EXTRA_CFLAGS ?=
CFLAGS := -Wall -Wextra -I$(srctree)/include $(EXTRA_CFLAGS)

export CC CFLAGS AR

ifdef V
Q=
else
Q=@
MAKEFLAGS += --no-print-directory
endif

export Q MAKEFLAGS V

progs := lsh
obj-lsh := program/built-in.a applets/built-in.a

include $(srctree)/scripts/Makefile.build
