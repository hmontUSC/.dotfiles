LINUX_SCRIPT = ./bin/linux.sh
CLEANUP_SCRIPT = ./bin/cleanup.sh

linux: clean
	@echo "Running the 'linux.sh' script..."
	$(LINUX_SCRIPT)

clean:
	@echo "Running the 'cleanup.sh' script..."
	$(CLEANUP_SCRIPT)
