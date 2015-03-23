

include $(TOP)/top.mk

VPATH = $(TOP)/lib/sol/module \
        $(TOP)/lib/sol/asio

BIN = asioTimer1 
#BIN64 = Test64

BOOST = /usr/local

ifeq ($(.OS),32)
	L_OBJ = $(TOP)/lib/32bit/asio/main.o \
			$(TOP)/lib/32bit/asio/timer1.o \
			-lboost_date_time	\
			-lboost_system	\
			-lstdc++

endif

ifeq ($(.OS),64)
	L_OBJ = $(TOP)/lib/64bit/asio/main.o \
			$(TOP)/lib/64bit/asio/timer1.o \
			-lboost_date_time	\
			-lboost_system	\
         	-lstdc++
endif

.PHONY:all

all:$(BIN) 

$(BIN):
	$(CC) $(CFLAGS) $(L_OBJ) -o $@ $(INC_DIRS)


.PHONY : clean
clean:
	rm -rf $(BIN)

