# Directory containing source (Markdown) files
source := src

# Directory containing pdf files
output := out

# All markdown files in src/ are considered sources
sources := $(wildcard $(source)/*.md)

# Convert the list of source files (Markdown files in directory src/)
# into a list of output files (HTMLs in directory out/).
objects := $(patsubst %.md,%.html,$(subst $(source),$(output),$(sources)))

all: $(objects)

$(output)/%.html: $(source)/%.md
	mkdir -p $(output)
	pandoc --to revealjs --standalone --variable revealjs-url=https://revealjs.com --output $@ $<

watch:
	fswatch -o -r src | xargs -n1 -I {} make

.PHONY : clean

clean:
	rm -rf $(output)/*