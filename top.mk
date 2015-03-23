

CC=/usr/bin/gcc
CXX=/usr/bin/g++
AR=/usr/bin/ar cr
CCFLAGS=-g

# project or product information.

PRDNAME=ASIO_Learn
PRDVER=100

#L_OBJ_TMP1=$(L_SRC:%.cpp=%.cc)
#L_OBJ_TMP2=$(L_OBJ_TMP1:%.gcc=%.cc)
#L_OBJ_TMP3=$(L_OBJ_TMP2:%.c=%.cc)
#L_OBJ=$(L_OBJ_TMP3:%.cc=$(OBJ_PATH)/%.o)

ifeq ($(.OS),32)
CCFLAGS=-g -mt 
endif

ifeq ($(.OS),64)
CCFLAGS=-g -mt -m64
endif

#.PHONY:all

#all:$(L_OBJ)
#	$(CC) $(CCFLAGS) $(L_OBJ) $(INC_DIRS)

#$(L_OBJ) : %.o : $.cpp
#	$(CCcc) -c $(CCFLAGS) $< -o $@

#%.o : %.c
#	$(CC) $(CCFLAGS) $< -o $@
