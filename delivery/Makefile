
#BUILD_TYPE=32
SUBDIRS = 32bit \
	  64bit

.PHONY : all
all:
	if [ $(BUILD_TYPE) -eq 64 ]; then \
		$(MAKE) -C 64bit; \
	fi;\
	if [ $(BUILD_TYPE) -eq 32 ]; then \
		$(MAKE)	-C 32bit; \
	else \
		$(MAKE) -C 32bit; $(MAKE) -C 64bit; \
	fi


.PHONY : clean
clean:
	@if [ -n "$(SUBDIRS)" ] ; then \
	for dir in ""$(SUBDIRS);do\
		echo making clean in $$dir;\
		cd $$dir ;\
		$(MAKE) -$(ARGS_CMD)  clean;\
		if [ $$? != 0 ];then \
			exit 1; \
		fi;     \
		cd .. ;\
	done;\
	fi
