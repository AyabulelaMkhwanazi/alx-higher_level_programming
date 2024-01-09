TARGET_MAKEFILE := makefile

MAIN_FILE := $(shell ls -t *-main.py | head -n 1)
TEST_FILE := $(shell ls -t *.py | head -n 1)

.PHONY: update_makefile
update_makefile:
	@echo "Updating $(TARGET_MAKEFILE)..."
	@sed -i 's|SCRIPT = .*|SCRIPT = $(MAIN_FILE)|' $(TARGET_MAKEFILE)
	@sed -i 's|FILE = .*|FILE = $(TEST_FILE)|' $(TARGET_MAKEFILE)

