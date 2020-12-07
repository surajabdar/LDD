obj-m := hello.o
KERNELDIR =/lib/modules/$(shell uname -r)/build

pwd:=$(shell pwd)


default:
	$(MAKE) -C $(KERNELDIR) M=$(pwd) modules

clean:
	rm -rf *.o*.ko*.mod.**.symers*.order
