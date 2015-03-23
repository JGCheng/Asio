
#BUILD_TYPE=32

.PHONY : all

all:
	if [ -z $(BUILD_TYPE) ]; then \
		$(MAKE) -C 32bit; $(MAKE) -C 64bit; \
	else \
		if [ $(BUILD_TYPE) -eq 64 ]; then \
			$(MAKE) -C 64bit; \
		fi;\
		if [ $(BUILD_TYPE) -eq 32 ]; then \
			$(MAKE)	-C 32bit; \
		fi \
	fi

SUBDIRS = 32bit \
	  64bit

.PHONY : clean
clean:
	@if [ -n "$(SUBDIRS)" ] ; then \
	for dir in ""$(SUBDIRS);do\
		echo making clean in $$dir;\
		cd $$dir ;\
		$(MAKE) -$(ARGS_CMD)  clean;\
		if [ $$? != 0 ];then \
			exit 1; \
		fi;	\
		cd .. ;\
	done;\
	fi

