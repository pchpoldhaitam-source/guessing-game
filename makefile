.PHONY: all
all:
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Date and time: $$(date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
	@echo "Number of lines: $$(wc -l < guessinggame.sh)" >> README.md
