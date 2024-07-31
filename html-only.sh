#!/bin/bash

# Repository name
REPO_NAME="html-basics"

# Get repository location from user input
echo "Enter the desired location for the repository (leave blank for current directory):"
read REPO_LOCATION

# Set repository location to current directory if input is empty
if [ -z "$REPO_LOCATION" ]; then
  REPO_LOCATION="."
fi

# Create main repository directory at the specified location
mkdir -p "$REPO_LOCATION/$REPO_NAME"
cd "$REPO_LOCATION/$REPO_NAME"

# Create README.md
touch README.md
echo "# $REPO_NAME" > README.md  # Add title to README

# Create examples directory and subdirectories
mkdir -p examples/{basics,structure,tables,forms,multimedia,iframes}

# Create HTML files in each subdirectory
touch examples/basics/{elements,attributes,text_formatting,lists,links_images}.html
touch examples/structure/{headings,paragraphs,divisions,semantic_elements}.html
touch examples/tables/{basic_table,advanced_table}.html
touch examples/forms/{basic_form,complex_form,form_validation}.html
touch examples/multimedia/{audio,video}.html
touch examples/iframes/iframe_example.html

# Create src directory and subdirectory
mkdir -p src/assets

# Create index.html file in src
touch src/index.html

# Add placeholder content to README.md (you'll need to fill this out manually)
echo "## Table of Contents" >> README.md
echo "* [Basics](#basics)" >> README.md
echo "* [Structure](#structure)" >> README.md
echo "* [Tables](#tables)" >> README.md
echo "* [Forms](#forms)" >> README.md
echo "* [Multimedia](#multimedia)" >> README.md
echo "* [Iframes](#iframes)" >> README.md
echo "* [Source Code](#source-code)" >> README.md

# Add placeholder content to index.html (you'll need to fill this out manually)
echo "<!DOCTYPE html>" > src/index.html
echo "<html lang=\"en\">" >> src/index.html
echo "<head>" >> src/index.html
echo "  <meta charset=\"UTF-8\">" >> src/index.html
echo "  <title>My HTML5 App</title>" >> src/index.html
echo "</head>" >> src/index.html
echo "<body>" >> src/index.html
echo "  " >> src/index.html
echo "</body>" >> src/index.html
echo "</html>" >> src/index.html

# Create LICENSE file (optional)
# touch LICENSE

echo "Repository structure created at $REPO_LOCATION/$REPO_NAME. Remember to fill out README.md and HTML files with actual content."
cd ..
