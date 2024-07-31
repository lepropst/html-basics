#!/bin/bash

# Get project location from user input
echo "Enter the location of your HTML project (including the project name):"
read PROJECT_LOCATION

# Check if the project directory exists
if [ ! -d "$PROJECT_LOCATION" ]; then
  echo "Error: Project directory not found at $PROJECT_LOCATION"
  exit 1
fi

# Check if the src directory exists
SRC_DIR="$PROJECT_LOCATION/src"
if [ ! -d "$SRC_DIR" ]; then
  echo "Error: src directory not found in $PROJECT_LOCATION"
  exit 1
fi

# Navigate into the src directory
cd "$SRC_DIR"

# Create CSS directory and subdirectories
mkdir -p ./css/{components,pages}

# Create CSS files
touch ./css/style.css
touch ./css/components/{header,footer,button}.css
touch ./css/pages/{home,about,contact}.css

# Add link to main stylesheet in index.html (assuming it exists in src)
if [ -f index.html ]; then
  echo "<link rel=\"stylesheet\" href=\"../css/style.css\">" >> index.html
else
  echo "Warning: index.html not found in $SRC_DIR. Please add the stylesheet link manually."
fi

# Add placeholder content to style.css
echo "/* Main Stylesheet for the entire application */" > ../css/style.css

# Add placeholder content to component CSS files
echo "/* Styles for the header component */" > ../css/components/header.css
echo "/* Styles for the footer component */" > ../css/components/footer.css
echo "/* Styles for the button component */" > ../css/components/button.css

# Add placeholder content to page-specific CSS files
echo "/* Styles for the home page */" > ../css/pages/home.css
echo "/* Styles for the about page */" > ../css/pages/about.css
echo "/* Styles for the contact page */" > ../css/pages/contact.css

echo "CSS structure added to the project at $PROJECT_LOCATION. Remember to fill out CSS files with actual styles."
cd ../..