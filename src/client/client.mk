$(BUILD_DIR)/client:$(SRC_DIR)/client/*.c
	gcc -I$(SRC_DIR)/include -o $@ -Wall $^
