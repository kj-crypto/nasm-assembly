NASM := nasm
NASM_OPTIONS := -f elf

LD := ld
LD_OPTIONS := -m elf_i386

src_dir = src
obj_dir = build
sources := $(shell find $(src_dir) -name "*.asm")

objects := $(sources:$(src_dir)/%.asm=$(obj_dir)/%.o)
targets := $(sources:$(src_dir)/%.asm=$(obj_dir)/%)

.DEFAULT_GOAL := all

debug:
	@echo $(sources)
	@echo $(objects)
	@echo $(targets)


$(obj_dir)/%.o: $(src_dir)/%.asm
	@mkdir -p $(dir $@)
	$(NASM) $(NASM_OPTIONS) -o $@ $^


$(targets): %: %.o
	$(LD) $(LD_OPTIONS) -o $@ $^


.PHONY: all
all: $(targets)


.PHONY: clean
clean:
	@rm -rf $(obj_dir)
