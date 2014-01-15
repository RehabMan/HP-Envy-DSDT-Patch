# makefile

#
# Patches/Installs/Builds DSDT patches for Haswell Envy 15
#
# Created by RehabMan 
#

EFIDIR=/Volumes/EFI
LAPTOPGIT=../laptop.git
EXTRADIR=./Extra
BUILDDIR=./build
PATCHED=./patched
PRODUCTS=$(BUILDDIR)/dsdt.aml $(BUILDDIR)/ssdt4.aml

IASLFLAGS=-vr -w1
IASL=iasl

.PHONY: all
all: $(PRODUCTS)

$(BUILDDIR)/dsdt.aml: $(PATCHED)/dsdt.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<
	
$(BUILDDIR)/ssdt4.aml: $(PATCHED)/ssdt4.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

.PHONY: clean
clean:
	rm $(PRODUCTS)

# Chameleon Install
.PHONY: install_extra
install_extra: $(PRODUCTS)
	-rm $(EXTRADIR)/ssdt-*.aml
	cp $(BUILDDIR)/dsdt.aml $(EXTRADIR)/dsdt.aml
	cp $(BUILDDIR)/ssdt4.aml $(EXTRADIR)/ssdt-1.aml
	#cp $(BUILDDIR)/ssdt1.aml $(EXTRADIR)/ssdt-2.aml
	#cp $(BUILDDIR)/ssdt5.aml $(EXTRADIR)/ssdt-3.aml


# Clover Install
.PHONY: install
install: $(PRODUCTS)
	if [ ! -d $(EFIDIR) ]; then mkdir $(EFIDIR) && sudo mount -t msdos /dev/disk0s1 $(EFIDIR); fi
	cp $(BUILDDIR)/dsdt.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched
	cp $(BUILDDIR)/ssdt4.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/ssdt-4.aml
	sudo umount $(EFIDIR)
	if [ -d "/Volumes/EFI" ]; then rmdir /Volumes/EFI; fi


# Patch with 'patchmatic'
.PHONY: patch
patch:
	cp dsdt.dsl ssdt4.dsl $(PATCHED)
	patchmatic $(PATCHED)/dsdt.dsl patches/syntax_dsdt.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/keyboard.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/remove_wmi.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/audio/audio_HDEF-layout12.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_IRQ.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/ssdt4.dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/ssdt4.dsl $(LAPTOPGIT)/graphics/graphics_PNLF_haswell.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/usb/usb_7-series.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_WAK2.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_OSYS.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_MCHC.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/battery/battery_HP-Envy-17t.txt $(PATCHED)/dsdt.dsl

# native correlations
# ssdt1 - PTID
# ssdt2 - PM related
# ssdt3 - PM related
# ssdt4 - graphics
# ssdt5 - not sure
# ssdt6, ssdt7, ssdt8 - loaded dynamically (PM related)
