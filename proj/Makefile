# Compiler
CC := gcc

# Ordner
SRC_DIR := c_app/src
BUILD_DIR := c_app/build
DATA_DIR := data

# Dateien
TARGET := $(BUILD_DIR)/sensor_app.exe
SRC := $(SRC_DIR)/main.c

# Standardziel
all: build

# C-Programm mit GCC bauen
build:
	if not exist c_app\build mkdir c_app\build
	gcc c_app/src/main.c -o c_app/build/sensor_app.exe

# C-Programm ausführen
run:
	./$(TARGET)

# Python-Auswertung starten
analyze:
	cd py_app && python src/analyze.py

# Alles ausführen
demo: build run analyze

# Build-Dateien und CSV löschen
clean:
	rm -rf $(BUILD_DIR)
	rm -f $(DATA_DIR)/sensor.csv