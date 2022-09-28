CC         = gcc
CFLAGS     = -g -Wall -Werror
RM         = rm -rf

BUILD_DIR  = build
PROG       = $(BUILD_DIR)/main

OBJS_DIR   = $(BUILD_DIR)/objs
OBJS       = *.o

SOURCE_DIR = src
SOURCE     = $(SOURCE_DIR)/*.c
HEADERS    = $(SOURCE_DIR)/*.h


default: all

all: main

run:
	[ -d $(BUILD_DIR) ] || make all
	
	$(PROG)

main: $(OBJS)
	[ -d $(BUILD_DIR) ] || mkdir -p $(BUILD_DIR)
	$(CC) $(COMP_FLAGS) $(OBJS) -o $(PROG)

$(OBJS): $(SOURCE) $(HEADERS)
	[ -d $(OBJS_DIR) ] || mkdir -p $(OBJS_DIR)
	$(CC) $(CFLAGS) -c $(SOURCE)

clean veryclean:
	$(RM) $(OBJS)
	$(RM) $(BUILD_DIR)
