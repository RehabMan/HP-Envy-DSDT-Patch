# makefile

#
# Patches/Installs/Builds DSDT patches for Haswell Envy 15
#
# Created by RehabMan 
#

# Note: Use OPTIMUS=1 if you have Optimus (for disabling nvidia)

EFIDIR=/Volumes/EFI
LAPTOPGIT=../laptop.git
DEBUGGIT=../debug.git
EXTRADIR=/Extra
BUILDDIR=./build
PATCHED=./patched
GFX0=ssdt4
ifneq ($(OPTIMUS), 1)
PEGP=
IAOE=ssdt5
PRODUCTS=$(BUILDDIR)/dsdt.aml $(BUILDDIR)/$(GFX0).aml $(BUILDDIR)/$(IAOE).aml
else
PEGP=ssdt5
IAOE=ssdt6
PRODUCTS=$(BUILDDIR)/dsdt.aml $(BUILDDIR)/$(GFX0).aml $(BUILDDIR)/$(PEGP).aml $(BUILDDIR)/$(IAOE).aml
endif

IASLFLAGS=-vr -w1
IASL=iasl

.PHONY: all
all: $(PRODUCTS)

$(BUILDDIR)/dsdt.aml: $(PATCHED)/dsdt.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/$(GFX0).aml: $(PATCHED)/$(GFX0).dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/$(PEGP).aml: $(PATCHED)/$(PEGP).dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/$(IAOE).aml: $(PATCHED)/$(IAOE).dsl
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
	cp $(BUILDDIR)/ssdt5.aml $(EXTRADIR)/ssdt-2.aml
	-cp $(BUILDDIR)/ssdt6.aml $(EXTRADIR)/ssdt-3.aml

# Clover Install
.PHONY: install
install: $(PRODUCTS)
	if [ ! -d $(EFIDIR) ]; then mkdir $(EFIDIR) && sudo mount -t msdos /dev/disk0s1 $(EFIDIR); fi
	cp $(BUILDDIR)/dsdt.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched
	cp $(BUILDDIR)/ssdt4.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/ssdt-4.aml
	cp $(BUILDDIR)/ssdt5.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/ssdt-5.aml
	-cp $(BUILDDIR)/ssdt6.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/ssdt-6.aml
	sudo umount $(EFIDIR)
	if [ -d "/Volumes/EFI" ]; then rmdir /Volumes/EFI; fi

# Patch with 'patchmatic'
.PHONY: patch
patch:
	cp dsdt.dsl $(GFX0).dsl $(IAOE).dsl $(PATCHED)
	patchmatic $(PATCHED)/dsdt.dsl patches/syntax_dsdt.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/cleanup.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/remove_wmi.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/ssdt4.dsl patches/cleanup.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/keyboard.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/audio/audio_HDEF-layout12.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_IRQ.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/ssdt4.dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/ssdt4.dsl $(LAPTOPGIT)/graphics/graphics_PNLF_haswell.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/ssdt4.dsl patches/hdmi_audio.txt $(PATCHED)/ssdt4.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/hdmi_audio.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/usb/usb_7-series.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_WAK2.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_OSYS.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_MCHC.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_HPET.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_RTC.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_SMBUS.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_Mutex.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_PNOT.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/system/system_IMEI.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl $(LAPTOPGIT)/battery/battery_HP-Envy-17t.txt $(PATCHED)/dsdt.dsl
ifeq ($(OPTIMUS), 1)
	cp $(PEGP).dsl $(PATCHED)
	patchmatic $(PATCHED)/$(PEGP).dsl patches/cleanup.txt $(PATCHED)/$(PEGP).dsl
	patchmatic $(PATCHED)/$(PEGP).dsl patches/optimus.txt $(PATCHED)/$(PEGP).dsl
	patchmatic $(PATCHED)/$(PEGP).dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/$(PEGP).dsl
endif
	patchmatic $(PATCHED)/$(IAOE).dsl patches/cleanup.txt $(PATCHED)/$(IAOE).dsl
	patchmatic $(PATCHED)/$(IAOE).dsl patches/syntax_iaoe.txt $(PATCHED)/$(IAOE).dsl
	patchmatic $(PATCHED)/$(IAOE).dsl $(LAPTOPGIT)/graphics/graphics_Rename-GFX0.txt $(PATCHED)/$(IAOE).dsl

.PHONY: patch_debug
patch_debug:
	make patch
	patchmatic $(PATCHED)/dsdt.dsl $(DEBUGGIT)/debug.txt $(PATCHED)/dsdt.dsl
	patchmatic $(PATCHED)/dsdt.dsl patches/debug.txt $(PATCHED)/dsdt.dsl

# native correlations
# ssdt1 - PTID
# ssdt2 - PM related
# ssdt3 - PM related
# ssdt4 - graphics
# ssdt5 - IAOE (sometimes required for sleep)
# ssdt6, ssdt7, ssdt8 - loaded dynamically (PM related)

# Note: In optimus setup, ssdt5 is PEGP and ssdt6 is IAOE
