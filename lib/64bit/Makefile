SUBDIRS = common \
          module \
		  asio
	   

.PHONY : subdirs
subdirs:
	@if [ -n "$(SUBDIRS)" ] ; then\
      for dir in ""$(SUBDIRS);do\
        cd $$dir ;\
        echo making all in $$dir : $(MAKE) $(MAKEARGS) all;\
                $(MAKE) $(MAKEARGS) all;\
            if [ $$? != 0 ];then exit 1;fi;\
        cd .. ; \
      done;\
     fi;

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
