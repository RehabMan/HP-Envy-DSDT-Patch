# makefile

#
# Patches/Installs/Builds DSDT patches for HP Envy (Haswell J/K/N/Q-series)
#
# Created by RehabMan
#

# set build products
BUILDDIR=./build
AML_PRODUCTS=$(BUILDDIR)/SSDT-ENVYJ.aml $(BUILDDIR)/SSDT-ENVYK1.aml $(BUILDDIR)/SSDT-ENVYK2.aml $(BUILDDIR)/SSDT-ENVYN.aml $(BUILDDIR)/SSDT-ENVYQ.aml
PRODUCTS=$(AML_PRODUCTS)

LE=/Library/Extensions
SLE=/System/Library/Extensions
VERSION_ERA=$(shell ./tools/print_version.sh)
ifeq "$(VERSION_ERA)" "10.10-"
	INSTDIR=$SLE
else
	INSTDIR=$LE
endif

IASLFLAGS=-vw 2095 -vw 2011 -vw 3144
IASL=iasl

.PHONY: all
all: $(PRODUCTS)

$(BUILDDIR)/SSDT-ENVYJ.aml: SSDT-ENVYJ.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYK1.aml: SSDT-ENVYK1.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYK2.aml: SSDT-ENVYK2.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYN.aml: SSDT-ENVYN.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYQ.aml: SSDT-ENVYQ.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<


.PHONY: clean
clean:
	rm -f $(BUILDDIR)/*.dsl $(BUILDDIR)/*.aml

.PHONY: install_j
install_j: SSDT-ENVYJ.aml
	$(eval EFIDIR:=$(shell ./mount_efi.sh))
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/DSDT.aml
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT-*.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT.aml
	cp $< $(EFIDIR)/EFI/CLOVER/ACPI/patched

.PHONY: install_k1
install_k1: SSDT-ENVYK1.aml
	$(eval EFIDIR:=$(shell ./mount_efi.sh))
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/DSDT.aml
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT-*.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT.aml
	cp $< $(EFIDIR)/EFI/CLOVER/ACPI/patched

.PHONY: install_k2
install_k2: SSDT-ENVYK2.aml
	$(eval EFIDIR:=$(shell ./mount_efi.sh))
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/DSDT.aml
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT-*.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT.aml
	cp $< $(EFIDIR)/EFI/CLOVER/ACPI/patched

.PHONY: install_n
install_n: SSDT-ENVYN.aml
	$(eval EFIDIR:=$(shell ./mount_efi.sh))
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/DSDT.aml
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT-*.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT.aml
	cp $< $(EFIDIR)/EFI/CLOVER/ACPI/patched

.PHONY: install_q
install_q: SSDT-ENVYQ.aml
	$(eval EFIDIR:=$(shell ./mount_efi.sh))
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/DSDT.aml
	rm -f $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT-*.aml $(EFIDIR)/EFI/CLOVER/ACPI/patched/SSDT.aml
	cp $< $(EFIDIR)/EFI/CLOVER/ACPI/patched

#EOF
