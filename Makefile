#
# Makefile for TOA module.
#
EXTRA_CFLAGS += $(call cc-option,-Wno-unused-but-set-variable ,)
EXTRA_CFLAGS += $(call cc-option,-Wno-unused-result ,)
EXTRA_CFLAGS += $(call cc-option,-Wno-format-security ,)
EXTRA_CFLAGS += $(call cc-option,-Wno-implicit-function-declaration ,)
#asflags-y  += $(EXTRA_AFLAGS)
ccflags-y  += $(EXTRA_CFLAGS)

#obj-$(CONFIG_TOA) += toa.o
obj-m += toa.o
all:
	make -C /lib/modules/`uname -r`/build M=$(PWD)
	#make -C /lib/modules/`uname -r`/build SUBDIRS=$(PWD) modules
clean:
	make -C /lib/modules/`uname -r`/build M=$(PWD) clean
	#make -C /lib/modules/`uname -r`/build SUBDIRS=$(PWD) clean

