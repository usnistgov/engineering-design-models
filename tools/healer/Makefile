# Generated automatically from Makefile.in by configure.
# Makefile for Sat2Vrml

ACIS_INCLUDES = -I/gicl/projs4/ACIS-6.3/abl -I/gicl/projs4/ACIS-6.3/ag -I/gicl/projs4/ACIS-6.3/amfc -I/gicl/projs4/ACIS-6.3/base -I/gicl/projs4/ACIS-6.3/bldcfg -I/gicl/projs4/ACIS-6.3/blnd -I/gicl/projs4/ACIS-6.3/bool -I/gicl/projs4/ACIS-6.3/br -I/gicl/projs4/ACIS-6.3/clr -I/gicl/projs4/ACIS-6.3/covr -I/gicl/projs4/ACIS-6.3/cstr -I/gicl/projs4/ACIS-6.3/ct -I/gicl/projs4/ACIS-6.3/ds -I/gicl/projs4/ACIS-6.3/eulr -I/gicl/projs4/ACIS-6.3/fct -I/gicl/projs4/ACIS-6.3/ga -I/gicl/projs4/ACIS-6.3/gi -I/gicl/projs4/ACIS-6.3/gl -I/gicl/projs4/ACIS-6.3/heal -I/gicl/projs4/ACIS-6.3/iges -I/gicl/projs4/ACIS-6.3/igl -I/gicl/projs4/ACIS-6.3/ihl -I/gicl/projs4/ACIS-6.3/intr -I/gicl/projs4/ACIS-6.3/kern -I/gicl/projs4/ACIS-6.3/kern/kernel -I/gicl/projs4/ACIS-6.3/law -I/gicl/projs4/ACIS-6.3/lop -I/gicl/projs4/ACIS-6.3/lopt -I/gicl/projs4/ACIS-6.3/ofst -I/gicl/projs4/ACIS-6.3/oper -I/gicl/projs4/ACIS-6.3/part -I/gicl/projs4/ACIS-6.3/phl -I/gicl/projs4/ACIS-6.3/pid -I/gicl/projs4/ACIS-6.3/rbase -I/gicl/projs4/ACIS-6.3/rbi -I/gicl/projs4/ACIS-6.3/rem -I/gicl/projs4/ACIS-6.3/sbool -I/gicl/projs4/ACIS-6.3/scm -I/gicl/projs4/ACIS-6.3/shl -I/gicl/projs4/ACIS-6.3/skin -I/gicl/projs4/ACIS-6.3/step -I/gicl/projs4/ACIS-6.3/swp -I/gicl/projs4/ACIS-6.3/trans -I/gicl/projs4/ACIS-6.3/vda -I/gicl/projs4/ACIS-6.3/vm -I/gicl/projs4/ACIS-6.3/warp -I/gicl/projs4/ACIS-6.3/part/part -I/gicl/projs4/ACIS-6.3

ACIS_LIBS = -L/gicl/projs4/ACIS-6.3/lib/solaris_so -labl_scm -labl_tb -lblnd_scm -lblnd_tb -lbool_scm -lbool_tb -lcaselib -lclr_tb -lcovr_scm -lcovr_tb -lcstr_scm -lcstr_tb -lct_scm -lct_tb -ldfct_scm -lds_scm -leulr_scm -leulr_tb -lfct_scm -lfct_tb -lga_scm -lga_tb -lgi_scm -lheal_scm -lheal_tb -liges_scm -lihl_scm -lintr_scm -lintr_tb -lkern_scm -lkern_tb -llop_scm -llop_tb -lofst_scm -lofst_tb -loper_scm -loper_tb -lphl_scm -lphl_tb -lpid_tb -lpmhusk -lppm_tb -lrbi_scm -lrbi_tb -lrem_scm -lrem_tb -lrender -lrnd_scm -lsbool_scm -lscheme -lscmext -lshl_scm -lshl_tb -lskin_scm -lskin_tb -lsmoke_scm -lstep_scm -lswp_scm -lswp_tb -ltestext -lvda_scm -lwarp_scm -labl_husk -lbaseutil -lblend -lboolean -lbr_husk -lclear -lconstrct -lcover -lct_husk -ldshusk -leuler -lfaceter -lga_husk -lgihusk -lhealhusk -ligeshusk -lihl_husk -lintersct -lkernel -llawutil -llop_husk -llopt_husk -loffset -loperator -lpart -lphl_husk -lpid_husk -lrbi_husk -lrem_husk -lrnd_husk -lsbool -lscmapp -lshl_husk -lskin -lspline  -lsweep -ltransutl -lvdahusk -lwarphusk


# -c compile but don't link
# -o specify different output object file name
# -v Print command executed to run stages of compilation
# -w inhibit all warning messages
# -g produce debugging info

LINK_FLAGS = -v -w -g
COMP_FLAGS = $(LINK_FLAGS) -c
COMP_CC = CC
LINK_CC = $(COMP_CC)

INCLUDE = -I. $(ACIS_INCLUDES)
LIBS = -L. -lm  -L/usr/openwin/lib -R/usr/openwin/lib  -lSM -lICE -lXt -lXext -lX11 -lsocket  -lnsl

EXE_NAME = autoheal

all:	$(EXE_NAME)

$(EXE_NAME):	autoheal.o 
	$(LINK_CC)  -o $(EXE_NAME) \
	$(LIBS) $(ACIS_LIBS) autoheal.o

autoheal.o: autoheal.cpp
	$(COMP_CC) -c $(COMP_FLAGS) $(INCLUDE) \
		-o $@ $<

clean:
	rm -f *$(EXT).o *~
