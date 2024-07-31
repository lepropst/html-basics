#!/bin/bash

# Get project location from user input
echo "Enter the location of your HTML project (including the project name):"
read PROJECT_LOCATION

# Check if the project directory exists
if [ ! -d "$PROJECT_LOCATION" ]; then
  echo "Error: Project directory not found at $PROJECT_LOCATION"
  return
fi

# Check if the src directory exists
SRC_DIR="$PROJECT_LOCATION/src"
if [ ! -d "$SRC_DIR" ]; then
  echo "Error: src directory not found in $PROJECT_LOCATION"
  return
fi

# Navigate into the src directory
cd "$SRC_DIR"

# Create JS directory and file
mkdir -p ./js
touch ./js/script.js

# Add link to script in index.html (assuming it exists in src)
if [ -f index.html ]; then
  echo "<script src=\"./js/script.js\"></script>" >> index.html
else
  echo "Warning: index.html not found in $SRC_DIR. Please add the script link manually."
fi

# Add placeholder content to script.js with a basic interaction
echo "document.addEventListener('DOMContentLoaded', (event) => {
  const button = document.querySelector('button');
  if (button) {
    button.addEventListener('click', () => {
      alert('Button clicked!');
    });
  } else {
    console.log('No button found on the page.');
  }
});" > ../js/script.js

echo "JS structure added to the project at $PROJECT_LOCATION. Remember to fill out script.js with actual functionality."
cd ../..