
SUBDIRS = lib \
	   prod \
	   delivery

.PHONY:all

all:version.info environ.info subdirs

# Verion.info file is used to record the product/project version and other third party packages version information. These information are get from the envirnment set before start the build.
# For example, the PRODUCTReleas=PRODUCT5.1
version.info:
	PRODUCD_Release=`basename .`

	echo $PRODUCTRelease > version.info	

environ.info:
	touch environ.info
	/bin/env > environ.info

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




#-----------------------------------------------------------------------
# Clean
#-----------------------------------------------------------------------
BUILD_CWD = .
.PHONY : clean
clean::
	@if [ -n "$(SUBDIRS)" ] ; then \
	for dir in ""$(SUBDIRS);do\
		echo making clean in $$dir;\
		cd $$dir ;\
		$(MAKE) -$(ARGS_CMD)  clean;\
		if [ $$? != 0 ];then \
			exit 1; \
		fi;\
		cd .. ;\
	done;\
	fi
