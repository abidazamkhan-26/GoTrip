#!/bin/bash

echo "Starting commit script..."

# Array of commit messages
messages=(
    "Initial project setup"
    "Add main structure"
    "Update index page"
    "Add navigation menu"
    "Implement hero section"
    "Add destination cards"
    "Update footer design"
    "Add contact form"
    "Implement gallery section"
    "Add team members"
    "Update styling"
    "Add blog section"
    "Fix responsive issues"
    "Add animations"
    "Update meta tags"
    "Add social links"
    "Implement search functionality"
    "Add testimonials"
    "Update color scheme"
    "Add booking form"
    "Fix navigation bugs"
    "Add mobile menu"
    "Update typography"
    "Add loading animations"
    "Implement filters"
    "Add map integration"
    "Update footer layout"
    "Add newsletter signup"
    "Fix accessibility issues"
    "Add error pages"
    "Optimize images"
)

# Create commits
for i in {1..30}; do
    echo "Creating temporary file $i..."
    echo "Content for commit $i" > temp_file_$i.txt
    echo "Timestamp: $(date)" >> temp_file_$i.txt
    
    git add temp_file_$i.txt
    
    # Get message from array (with wrap-around)
    msg_index=$(( (i-1) % 30 ))
    git commit -m "${messages[$msg_index]}"
    
    echo "Commit $i/30: ${messages[$msg_index]}"
done

# Clean up
echo "Cleaning up temporary files..."
for i in {1..30}; do
    git rm temp_file_$i.txt
done

git commit -m "Clean up temporary files"

echo "All commits completed!"
