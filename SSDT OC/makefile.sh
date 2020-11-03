SHELL := /bin/bash

BUILDDIR=./build
TOOLDIR=./tool
AML_PRODUCTS=$(BUILDDIR)/SSDT-HP14AC.aml
PRODUCTS=$(AML_PRODUCTS)

IASLFLAGS=-vw 2095 -vw 2011 -vw 3144
IASL=iasl



.PHONY: all
all: $(PRODUCTS)
$(BUILDDIR)/SSDT-HP14AC.aml: SSDT-HP14AC.dsl SSDT-BATT.dsl SSDT-EC.dsl SSDT-GPRW.dsl SSDT-HPET_IPIC_RTC_TIMR.dsl SSDT-PLUG.dsl SSDT-USB.dsl SSDT-PNLF.dsl SSDT-PS2k.dsl SSDT-Q13.dsl SSDT-MCHC-MEM2-SBUS-SLPB.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<


.PHONY: rm
rm:
	mkdir -p "$(BUILDDIR)/OLD"
	if [ -f $(BUILDDIR)/SSDT-HP14AC.aml ]; then \
		mv $(BUILDDIR)/SSDT-HP14AC.aml $(BUILDDIR)/OLD; \
	fi


.PHONY: install
install: $(BUILDDIR)/SSDT-HP14AC.aml
	$(eval EFIDIR:=$(shell ./mount_efi.sh))
	mkdir -p "$(EFIDIR)/EFI/OC/ACPI/OLD/"
	
	if [ -f $(EFIDIR)/EFI/OC/ACPI/*.aml ]; then \
		mv $(EFIDIR)/EFI/OC/ACPI/*.aml $(EFIDIR)/EFI/OC/ACPI/OLD/; \
	fi
	cp $< $(EFIDIR)/EFI/OC/ACPI/

