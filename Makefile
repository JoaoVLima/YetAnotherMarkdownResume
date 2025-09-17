# Directory where the Markdown files are located
SRC_DIR=src

# Directory where the PDFs will be generated
OUT_DIR=out

# LaTeX template used to generate the PDF
TEMPLATE=$(SRC_DIR)/template.tex

# Find all Markdown files (*.md) inside SRC_DIR and subdirectories
MD_FILES=$(shell find $(SRC_DIR) -name "*.md")

# Convert the paths of Markdown files into corresponding PDF paths
# Example: src/python/resume.md -> out/python/resume.pdf
PDF_FILES=$(patsubst $(SRC_DIR)/%.md,$(OUT_DIR)/%.pdf,$(MD_FILES))

# Default Makefile target: generate all PDFs
all: $(PDF_FILES)
	@echo "All PDFs were generated!"

# Rule to generate a PDF from a specific Markdown file
# $< = input Markdown file
# $@ = output PDF file
$(OUT_DIR)/%.pdf: $(SRC_DIR)/%.md
	# Ensure the output directory exists
	mkdir -p $(dir $@)
	# Convert Markdown to PDF using Pandoc and the defined template
	pandoc $< -o $@ --template=$(TEMPLATE)

# Clean all generated PDFs
clean:
	# Remove all PDFs from the out directory
	rm -rf $(OUT_DIR)/*
