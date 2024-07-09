#!/bin/bash

# Script to create project folders and initialize a Markdown file

# Check if a folder name was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder_name>"
    exit 1
fi

FOLDER_NAME=$1

# Create directories in images/projects and files/projects
mkdir -p "images/projects/$FOLDER_NAME"
mkdir -p "files/projects/$FOLDER_NAME"

# Initialize a Markdown file in _projects/<folder_name>.md
MD_FILE="_projects/$FOLDER_NAME.md"
touch "$MD_FILE"

# Add initial content to the Markdown file
echo "---" >> "$MD_FILE"
echo "title: '$FOLDER_NAME Project'" >> "$MD_FILE"
echo "date: $(date +%Y-%m-%d)" >> "$MD_FILE"
echo "description: Description of $FOLDER_NAME project" >> "$MD_FILE"
echo "---" >> "$MD_FILE"
echo "" >> "$MD_FILE"
echo "Project content goes here." >> "$MD_FILE"

echo "Project folder and Markdown file created successfully."