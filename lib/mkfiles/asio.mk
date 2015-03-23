
INC_DIRS += -I$(TOP)/src/sl/module/include \
            -I$(TOP)/src/common/include   \
            -I$(TOP)/src/sl/asio/include

VPATH += $(TOP)/src/sl//asio/source

LIB = timer1

LIBNAME=lib$(LIB).a

# dynamic shared libarary
# SHLIBNAME=libtest.so

L_SRC += main.cc	\
		 timer1.cc

L_OBJ_TMP1=$(L_SRC:%.cpp=%.cc)
L_OBJ_TMP2=$(L_OBJ_TMP1:%.gcc=%.cc)
L_OBJ_TMP3=$(L_OBJ_TMP2:%.c=%.cc)
L_OBJ=$(L_OBJ_TMP3:%.cc=%.o)

.PHONY:all

all:$(L_OBJ) $(LIBNAME) $(SHLIBNAME)

$(L_OBJ) : %.o : %.cc
	$(CC) -c $(CFLAGS) $< -o $@ $(INC_DIRS)

$(LIBNAME) : $(L_OBJ)
	$(AR) $(LIBNAME) $(L_OBJ)

$(SHLIBNAME) : $(L_SRC)
	$(CC) -shared -fPIC $< -o $(@) $(INC_DIRS)


.PHONY : clean
clean : 
	rm $(L_OBJ)
	rm $(LIBNAME)
	rm $(SHLIBNAME)
