SHELL := /bin/bash

TARGET_MAKEFILE := Makefile
OLD_MAIN_FILE := $(shell grep -oP 'SCRIPT = \K.*' $(TARGET_MAKEFILE))

# Get the latest file number
LATEST_NUM := $(shell ls -v | grep -oP '^\K\d+' | tail -n 1)

# Check if main and test files exist for the latest number
MAIN_FILE := $(shell if [ -f "$(LATEST_NUM)-main.py" ]; then echo "$(LATEST_NUM)-main.py"; fi)
TEST_FILES := $(shell ls -v $(LATEST_NUM)*.py 2>/dev/null | grep -v "$(LATEST_NUM)-main.py" | tr '\n' ' ')

README_SH := update_pyreadme.sh

.PHONY: update_makefile

# Updates the target makefile.
update_makefile:
	@i=0; \
	while [ $$i -lt 20 ]; do \
		printf "\rUpdating $(TARGET_MAKEFILE) ."; \
		sleep .1; \
		printf "\rUpdating $(TARGET_MAKEFILE) .."; \
		sleep .1; \
		printf "\rUpdating $(TARGET_MAKEFILE) ..."; \
		sleep .1; \
		printf "\rUpdating $(TARGET_MAKEFILE) .."; \
		sleep .1; \
		printf "\rUpdating $(TARGET_MAKEFILE) ."; \
		sleep .1; \
		i=$$((i+1)); \
	done; \
	printf "\r%$${COLUMNS}s\r"; \
	if [ "$(MAIN_FILE)" = "$(OLD_MAIN_FILE)" ]; then \
		echo "No new main file found!"; \
		sed -i 's|SCRIPT = .*|SCRIPT = |' $(TARGET_MAKEFILE); \
	else \
		sed -i 's|SCRIPT = .*|SCRIPT = $(MAIN_FILE)|' $(TARGET_MAKEFILE); \
		sed -i 's|EXECUTABLE = .*|EXECUTABLE = $(MAIN_FILE)|' $(TARGET_MAKEFILE); \
	fi; \
	if [ -z "$(MAIN_FILE)" ]; then \
		if [ -z "$(TEST_FILES)" ]; then \
			echo "Both MAIN_FILE and TEST_FILES variables are empty. Cannot update EXECUTABLE variable."; \
		else \
			sed -i 's|EXECUTABLE = .*|EXECUTABLE = $(TEST_FILES)|' $(TARGET_MAKEFILE); \
		fi; \
	else \
		sed -i 's|EXECUTABLE = .*|EXECUTABLE = $(MAIN_FILE)|' $(TARGET_MAKEFILE); \
	fi; \
	if [ -z "$(TEST_FILES)" ]; then \
		echo "Didn't find new test files"; \
	else \
		sed -i 's|FILE = .*|FILE = $(TEST_FILES)|' $(TARGET_MAKEFILE); \
	fi; \
	echo -n "UPDATED"; \
	sleep 2; \
	printf "\r%$${COLUMNS}s\r"; 

# Updates the README file.
update_pyreadme:
	@i=0; \
	spin='/-\|'; \
	while [ $$i -lt 40 ]; do \
		printf "\rRunning $(README_SH) %$${i}s${spin:i++%4:1}"; \
		sleep .1; \
		i=$$((i+1)); \
	done; \
	printf "\r%$${COLUMNS}s\r"; \
	if [ -n "$(README_SH)" ]; then \
		chmod u+x $(README_SH); \
		./$(README_SH); \
	fi; \
	printf "\r%$${COLUMNS}s\r"
