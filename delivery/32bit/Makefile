
TOP=../..

include $(TOP)/top.mk

.PHONY: all

all:$(PRDNAME)$(PRDVER).tar

$(PRDNAME)$(PRDVER).tar : $(TOP)/prod/32bit/asioTimer1
	rm -rf $(PRDNAME)$(PRDVER).tar.gz
	mkdir -p ./bin
	
	cp $(TOP)/prod/32bit/Test ./bin/
	tar cf $(PRDNAME)$(PRDVER).tar ./bin/*

	gzip $(PRDNAME)$(PRDVER).tar
	
	rm -rf ./bin
	

.PHONY : clean
clean:
	rm $(PRDNAME)$(PRDVER).tar.gz
