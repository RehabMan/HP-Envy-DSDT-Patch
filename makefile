#.SUFFIXES: .aml .dsl

#.aml.dsl :
#	$(IASL) -p $@ $<

EFIDIR=/Volumes/EFI
LAPTOPGIT=../laptop.git
EXTRADIR=./Extra
BUILDDIR=./build
PATCHED=./patched
#PRODUCTS=$(BUILDDIR)/dsdt.aml $(BUILDDIR)/ssdt1.aml $(BUILDDIR)/ssdt2.aml $(BUILDDIR)/ssdt3.aml $(BUILDDIR)/ssdt4.aml $(BUILDDIR)/ssdt5.aml $(BUILDDIR)/ssdt6.aml $(BUILDDIR)/ssdt7.aml $(BUILDDIR)/ssdt8.aml
PRODUCTS=$(BUILDDIR)/dsdt.aml $(BUILDDIR)/ssdt4.aml

IASLFLAGS=-vr -w1
IASL=iasl

.PHONY: all
all: $(PRODUCTS)

$(BUILDDIR)/dsdt.aml: $(PATCHED)/dsdt.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<
	
#$(BUILDDIR)/ssdt1.aml: ssdt1.dsl
#	$(IASL) $(IASLFLAGS) -p $@ $<

#$(BUILDDIR)/ssdt2.aml: ssdt2.dsl
#	$(IASL) $(IASLFLAGS) -p $@ $<

#$(BUILDDIR)/ssdt3.aml: ssdt3.dsl
#	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/ssdt4.aml: $(PATCHED)/ssdt4.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

#$(BUILDDIR)/ssdt5.aml: ssdt5.dsl
#	$(IASL) $(IASLFLAGS) -p $@ $<

#$(BUILDDIR)/ssdt6.aml: ssdt6.dsl
#	$(IASL) $(IASLFLAGS) -p $@ $<

#$(BUILDDIR)/ssdt7.aml: ssdt7.dsl
#	$(IASL) $(IASLFLAGS) -p $@ $<

#$(BUILDDIR)/ssdt8.aml: ssdt8.dsl
#		$(IASL) $(IASLFLAGS) -p $@ $<
	
.PHONY: clean
clean:
	rm $(PRODUCTS)

.PHONY: install_extra
install_extra: $(PRODUCTS)
	-rm $(EXTRADIR)/ssdt-*.aml
	cp $(BUILDDIR)/dsdt.aml $(EXTRADIR)/dsdt.aml
	cp $(BUILDDIR)/ssdt4.aml $(EXTRADIR)/ssdt-1.aml
	#cp $(BUILDDIR)/ssdt1.aml $(EXTRADIR)/ssdt-2.aml
	#cp $(BUILDDIR)/ssdt5.aml $(EXTRADIR)/ssdt-3.aml
	
.PHONY: install
install: $(PRODUCTS)
	if [ ! -d $(EFIDIR) ]; then mkdir $(EFIDIR) && sudo mount -t msdos /dev/disk0s1 $(EFIDIR); fi
	cp $(BUILDDIR)/dsdt.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched
	cp $(BUILDDIR)/ssdt4.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/ssdt-4.aml
	sudo umount $(EFIDIR)
	if [ -d "/Volumes/EFI" ]; then rmdir /Volumes/EFI; fi

.PHONY: patch
patch:
	cp dsdt.dsl ssdt4.dsl $(PATCHED)
	patchmatic dsdt.dsl patches/syntax_dsdt.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/audio/audio_HDEF-layout12.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_IRQ.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/ssdt4.dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/ssdt4.dsl
	#patchmatic $(PATCHED)/ssdt4.dsl patches/brightness.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/ssdt4.dsl patches/brightness2.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/ssdt4.dsl patches/brightness2_data.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/keyboard.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/usb/usb_7-series.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_WAK2.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_OSYS.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_MCHC.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_OSYS.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/battery/battery_HP-Envy-17t.txt $(PATCHED)/dsdt.dsl

# native correlations
# ssdt1 - PTID
# ssdt2 - PM related
# ssdt3 - PM related
# ssdt4 - graphics
# ssdt5 - not sure
# ssdt6, ssdt7, ssdt8 - loaded dynamically (PM related)
