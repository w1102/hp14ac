# makefile

#
# 
#
# Created by RehabMan. Edit by Quang.
#

# set build products
BUILDDIR=./build
AML_PRODUCTS=$(BUILDDIR)/SSDT-HP14AC.aml
PRODUCTS=$(AML_PRODUCTS)

IASLFLAGS=-vw 2095 -vw 2011 -vw 3144
IASL=iasl

.PHONY: all
all: $(PRODUCTS)

$(BUILDDIR)/SSDT-HP14AC.aml: SSDT-HP14AC.dsl  SSDT-PNLF.dsl SSDT-PS2K.dsl SSDT-Q13.dsl SSDT-BATT.dsl SSDT-FANREAD.dsl SSDT-UIAC.dsl SSDT-USBX.dsl SSDT-SMBUS.dsl SSDT-XOSI.dsl #SSDT-GPRW.dsl
	$(IASL) $(IASLFLAGS) -p $@ $<






#EOF
