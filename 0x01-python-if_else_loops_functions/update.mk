TARGET_MAKEFILE := makefile
OLD_MAIN_FILE := $(shell grep -oP 'SCRIPT = \K.*' $(TARGET_MAKEFILE))
MAIN_FILE := $(shell ls -t *-main.py | head -n 1)
TEST_FILE := $(shell ls -t *.py | head -n 1)

.PHONY: update_makefile
update_makefile:
		@echo "Updating $(TARGET_MAKEFILE)..."
		@if [ "$(MAIN_FILE)" = "$(OLD_MAIN_FILE)" ]; then \
                echo "No new main file found..."; \
                sed -i 's|SCRIPT = .*|SCRIPT = |' $(TARGET_MAKEFILE); \
                sed -i 's|EXECUTABLE = .*|EXECUTABLE = $(TEST_FILE)|' $(TARGET_MAKEFILE); \
		else \
                sed -i 's|SCRIPT = .*|SCRIPT = $(MAIN_FILE)|' $(TARGET_MAKEFILE); \
                sed -i 's|EXECUTABLE = .*|EXECUTABLE = $(MAIN_FILE)|' $(TARGET_MAKEFILE); \
		fi
		@sed -i 's|FILE = .*|FILE = $(TEST_FILE)|' $(TARGET_MAKEFILE)
