.PHONY: all tools compare clean tidy

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

ROM := kirbydreamland.gb
OBJS := main.o wram.o

MD5 := md5sum -c

all: $(ROM) compare

ifeq (,$(filter tools clean tidy,$(MAKECMDGOALS)))
Makefile: tools
endif

%.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
%.o: %.asm $$(dep)
	rgbasm -h -o $@ $<

$(ROM): $(OBJS)
	rgblink -n $(ROM:.gb=.sym) -m $(ROM:.gb=.map) -o $@ $(OBJS)
	rgbfix -jv -l 0x01 -m 0x01 -p 0xFF -r 0 -t "KIRBY DREAM LAND" $@

compare: $(ROM)
	@$(MD5) rom.md5

tools:
	$(MAKE) -C tools

tidy:
	rm -f $(ROM) $(OBJS) $(ROM:.gb=.sym) $(ROM:.gb=.map)
	$(MAKE) -C tools clean

clean: tidy
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' -o -iname '*.pcm' \) -exec rm {} +

%.interleave.2bpp: %.interleave.png
	rgbgfx -o $@ $<
	tools/gfx --interleave --png $< -o $@ $@

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d1 -o $@ $<
