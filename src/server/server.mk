LDFLAGS+= -lpthread

$(BUILD_DIR)/server:$(SRC_DIR)/server/*.c
	$(CC) -I$(SRC_DIR)/include -o $@ $(LDFLAGS) -Wall $^
