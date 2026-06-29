# Compiler
CC := gcc

# Ordner
SRC_DIR := c_app/src
BUILD_DIR := c_app/build


# Dateien
TARGET := $(BUILD_DIR)/sensor_app.exe
SRC := $(SRC_DIR)/main.c

# Standardziel
all: build

# C-Programm mit GCC bauen
build:
	@mkdir -p c_app/build
	@gcc c_app/src/main.c c_app/src/sensor.c -o c_app/build/sensor_app.exe

# C-Programm ausführen
run:
	./$(TARGET)

test: build
	@gcc c_app/tests/test_sensor.c c_app/src/sensor.c -o c_app/build/test_sensor.exe
	@c_app/build/test_sensor.exe
	@cd py_app && pytest

check:
	@gcc -Wall -Wextra -Wpedantic -Werror -fsyntax-only c_app/src/main.c c_app/src/sensor.c
	@echo "Static code analysis passed."

# Alles ausführen
demo: build run 

# Build-Dateien löschen
clean:
	rm -rf c_app/build
