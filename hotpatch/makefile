# makefile

#
# 
#
# Created by RehabMan. Edit by Quang.
#

# set build products
BUILDDIR=./build
TOOLDIR=./tool
AML_PRODUCTS=$(BUILDDIR)/SSDT-HP14AC.aml
PRODUCTS=$(AML_PRODUCTS)

IASLFLAGS=-vw 2095 -vw 2011 -vw 3144
IASL=iasl

.PHONY: all
all: $(PRODUCTS)

$(BUILDDIR)/SSDT-HP14AC.aml: SSDT-HP14AC.dsl  SSDT-PNLF.dsl SSDT-PS2K.dsl SSDT-Q13.dsl SSDT-BATT.dsl SSDT-FANREAD.dsl SSDT-UIAC.dsl SSDT-USBX.dsl SSDT-SMBUS.dsl SSDT-XOSI.dsl #SSDT-GPRW.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<


.PHONY: install
install: $(BUILDDIR)/SSDT-HP14AC.aml
	$(eval EFIDIR:=$(shell ./mount_efi.sh))
	rm -f "$(EFIDIR)"/EFI/CLOVER/ACPI/patched/DSDT.aml
	rm -f "$(EFIDIR)"/EFI/CLOVER/ACPI/patched/SSDT-*.aml "$(EFIDIR)"/EFI/CLOVER/ACPI/patched/SSDT.aml
	cp $< "$(EFIDIR)"/EFI/CLOVER/ACPI/patched



#EOF
