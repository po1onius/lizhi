SRC_DIR := src
BUILD_DIR := build
include src/client/client.mk
include src/server/server.mk

builddir:
	mkdir -p build

lizhi:builddir $(BUILD_DIR)/client $(BUILD_DIR)/server 


clean:
	rm -rf build
