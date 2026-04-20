#!/usr/bin/env python3
import subprocess
import time
import random

# List of commit messages
commit_messages = [
    "Initial project setup",
    "Add main structure",
    "Update index page",
    "Add navigation menu",
    "Implement hero section",
    "Add destination cards",
    "Update footer design",
    "Add contact form",
    "Implement gallery section",
    "Add team members",
    "Update styling",
    "Add blog section",
    "Fix responsive issues",
    "Add animations",
    "Update meta tags",
    "Add social links",
    "Implement search functionality",
    "Add testimonials",
    "Update color scheme",
    "Add booking form",
    "Fix navigation bugs",
    "Add mobile menu",
    "Update typography",
    "Add loading animations",
    "Implement filters",
    "Add map integration",
    "Update footer layout",
    "Add newsletter signup",
    "Fix accessibility issues",
    "Add error pages",
    "Optimize images",
    "Final deployment setup"
]

def run_command(command):
    """Run a shell command and return the result"""
    try:
        result = subprocess.run(command, shell=True, capture_output=True, text=True, cwd='.')
        if result.returncode == 0:
            print(f"✓ Success: {command}")
            return True
        else:
            print(f"✗ Error: {command}")
            print(f"Error output: {result.stderr}")
            return False
    except Exception as e:
        print(f"✗ Exception: {e}")
        return False

def make_commits():
    """Make multiple commits with different messages"""
    print("Starting commit script...")
    
    # Create some dummy files to commit
    for i in range(30):
        filename = f"temp_file_{i}.txt"
        with open(filename, 'w') as f:
            f.write(f"Content for commit {i}\n")
            f.write(f"Timestamp: {time.time()}\n")
            f.write(f"Random: {random.randint(1, 1000)}\n")
        
        # Add file to git
        run_command(f'git add "{filename}"')
        
        # Commit with message
        commit_msg = commit_messages[i % len(commit_messages)]
        run_command(f'git commit -m "{commit_msg}"')
        
        print(f"Commit {i+1}/30: {commit_msg}")
        
        # Small delay to avoid issues
        time.sleep(0.1)
    
    # Clean up temp files
    print("Cleaning up temporary files...")
    for i in range(30):
        filename = f"temp_file_{i}.txt"
        run_command(f'git rm "{filename}"')
    
    # Final cleanup commit
    run_command('git commit -m "Clean up temporary files"')
    
    print("✓ All commits completed!")

if __name__ == "__main__":
    make_commits()
