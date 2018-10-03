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

IASLFLAGS=-vw 2095 -vw 2011 -vw 3144
IASL=iasl

.PHONY: all
all: $(PRODUCTS)

$(BUILDDIR)/SSDT-ENVYJ.aml: SSDT-ENVYJ.dsl SSDT-XOSI.dsl SSDT-GPRW.dsl SSDT-PNLF.dsl SSDT-MISC.dsl SSDT-PS2K.dsl SSDT-Q13.dsl SSDT-BATTJ.dsl SSDT-DDGPU.dsl SSDT-DEH01.dsl SSDT-USB-J.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYK1.aml: SSDT-ENVYK1.dsl SSDT-XOSI.dsl SSDT-GPRW.dsl SSDT-PNLF.dsl SSDT-MISC.dsl SSDT-PS2K.dsl SSDT-Q10Q11.dsl SSDT-BATTK.dsl SSDT-DDGPU.dsl SSDT-USB-K1.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYK2.aml: SSDT-ENVYK2.dsl SSDT-XOSI.dsl SSDT-GPRW.dsl SSDT-PNLF.dsl SSDT-MISC.dsl SSDT-PS2K.dsl SSDT-Q10Q11.dsl SSDT-BATTK.dsl SSDT-DDGPU.dsl SSDT-USB-K2.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYN.aml: SSDT-ENVYN.dsl SSDT-XOSI.dsl SSDT-GPRW.dsl SSDT-PNLF.dsl SSDT-MISC.dsl SSDT-PS2K.dsl SSDT-Q10Q11.dsl SSDT-BATTN.dsl SSDT-DDGPU.dsl SSDT-USB-N.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<

$(BUILDDIR)/SSDT-ENVYQ.aml: SSDT-ENVYQ.dsl SSDT-XOSI.dsl SSDT-GPRW.dsl SSDT-PNLF.dsl SSDT-MISC.dsl SSDT-PS2K.dsl SSDT-Q13.dsl SSDT-BATTQ.dsl SSDT-DDGPU.dsl SSDT-DEH01.dsl SSDT-USB-Q.dsl
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
