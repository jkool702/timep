# Modify this if your musl-cross-make is in a different directory
MUSL_CROSS_ROOT ?= /mnt/ramdisk/musl-cross-make/build/local/
BUILTIN_SRC     ?= clock_gettime.c
BUILTIN_NAME    ?= clock_gettime.so
OUTPUT_DIR      ?= build

# List of target architectures to build for
TARGETS = \
    x86_64-linux-musl \
    aarch64-linux-musl \
    arm-linux-musleabihf \
    riscv64-linux-musl \
    mipsel-linux-musl

# Rules to invoke musl-cross-gcc
all: $(addprefix $(OUTPUT_DIR)/, $(addsuffix /$(BUILTIN_NAME), $(TARGETS)))

$(OUTPUT_DIR)/%/$(BUILTIN_NAME): $(BUILTIN_SRC)
	@mkdir -p $(dir $@)
	$(MUSL_CROSS_ROOT)/bin/$*-gcc -fPIC -shared -O3 -flto -Wall -Wextra -DSHELL -DLOADABLE_BUILTIN -I/usr/include/bash -I/usr/include/bash/include -I/usr/include/bash/builtins -o  $@ $<

clean:
	rm -rf $(OUTPUT_DIR)

.PHONY: all clean

