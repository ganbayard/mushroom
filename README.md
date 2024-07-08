# Mushroom Project

This repository contains the code for the Mushroom project.

## Setup and Installation

### Prerequisites
- Git
- GitHub account
- GitHub CLI (optional, but recommended)

### Clone the Repository
```bash
git clone https://github.com/ganbayard/mushroom.git
cd mushroom

Configure Git
Ensure your Git configuration matches your GitHub account:

git config --global user.name "Your GitHub Username"
git config --global user.email "your-email@example.com"
GitHub Repository Setup
Option 1: Using GitHub CLI

Install GitHub CLI: https://cli.github.com/
Authenticate with GitHub:

gh auth login
Follow the prompts to log in to your GitHub account.
Create the repository:
bashCopygh repo create mushroom --public --source=. --remote=origin


Option 2: Manual Setup

Create a new repository on GitHub named "mushroom"
Add the remote to your local repository:
git remote add origin https://github.com/ganbayard/mushroom.git


Pushing Code to GitHub
Using HTTPS
git push -u origin main
Using SSH (Alternative Method)

Check if you have an SSH key set up:
ls -al ~/.ssh
Look for files named id_rsa and id_rsa.pub
If you don't have these files, generate a new SSH key:
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
Follow the prompts (you can press enter to accept the defaults)
Add your SSH key to the ssh-agent:
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

Copy your SSH public key:
pbcopy < ~/.ssh/id_rsa.pub

Go to GitHub.com → Settings → SSH and GPG keys → New SSH key
Paste your key and save it
Change your remote to use SSH:
git remote set-url origin git@github.com:{yourusername}/mushroom.git

Try pushing again:
git push -u origin main