# Git Commands Reference - Heart Disease Analysis

## Initial Setup (Run Once)

### 1. Initialize Git Repository
```bash
git init
```

### 2. Add All Files
```bash
git add .
```

### 3. Create Initial Commit
```bash
git commit -m "Initial commit: Complete heart disease analysis project"
```

### 4. Add Remote Repository
```bash
# Replace <your-github-url> with your actual repository URL
git remote add origin <your-github-url>
```

### 5. Push to Main Branch
```bash
git push -u origin main
```

## Create Team Member Branches

### Create All Branches at Once
```bash
# Atul Singh's branch
git checkout -b atul-singh
git push -u origin atul-singh

# Cyrus Prakash Tiwari's branch
git checkout -b cyrus-tiwari
git push -u origin cyrus-tiwari

# Arpit Pandey's branch
git checkout -b arpit-pandey
git push -u origin arpit-pandey

# Atul Raj Gautam's branch
git checkout -b atul-gautam
git push -u origin atul-gautam

# Return to main
git checkout main
```

## Working on Your Branch

### Switch to Your Branch
```bash
# For Atul Singh
git checkout atul-singh

# For Cyrus Prakash Tiwari
git checkout cyrus-tiwari

# For Arpit Pandey
git checkout arpit-pandey

# For Atul Raj Gautam
git checkout atul-gautam
```

### Check Current Branch
```bash
git branch
```

### Check Status
```bash
git status
```

### Add Your Changes
```bash
# Add specific file
git add filename.py

# Add all changes
git add .

# Add all Python files
git add *.py
```

### Commit Your Changes
```bash
git commit -m "Description of your changes"
```

### Push to Your Branch
```bash
git push origin <your-branch-name>
```

## Common Workflows

### Arpit Pandey's Workflow
```bash
# Switch to your branch
git checkout arpit-pandey

# Make changes to Flask app, Tableau integration, etc.
# ... edit files ...

# Check what changed
git status

# Add all changes
git add .

# Commit with meaningful message
git commit -m "feat: Implemented Flask dashboard with Tableau embed"

# Push to your branch
git push origin arpit-pandey
```

### Updating Your Branch with Latest Changes
```bash
# Switch to your branch
git checkout <your-branch-name>

# Pull latest changes
git pull origin <your-branch-name>
```

### Merge Main into Your Branch (if needed)
```bash
# Switch to your branch
git checkout <your-branch-name>

# Merge main branch
git merge main

# Resolve any conflicts if they occur
# Then commit and push
git push origin <your-branch-name>
```

## Viewing Changes

### See What Changed
```bash
git status
```

### See Differences
```bash
# See all changes
git diff

# See changes in specific file
git diff filename.py
```

### View Commit History
```bash
git log

# Compact view
git log --oneline

# With graph
git log --graph --oneline --all
```

## Undoing Changes

### Discard Changes in Working Directory
```bash
# Discard changes in specific file
git checkout -- filename.py

# Discard all changes
git checkout -- .
```

### Unstage Files
```bash
# Unstage specific file
git reset HEAD filename.py

# Unstage all files
git reset HEAD
```

### Undo Last Commit (keep changes)
```bash
git reset --soft HEAD~1
```

## Branch Management

### List All Branches
```bash
# Local branches
git branch

# Remote branches
git branch -r

# All branches
git branch -a
```

### Delete Branch
```bash
# Delete local branch
git branch -d branch-name

# Force delete
git branch -D branch-name

# Delete remote branch
git push origin --delete branch-name
```

## Collaboration

### Pull Latest Changes from Remote
```bash
git pull origin <branch-name>
```

### Fetch All Branches
```bash
git fetch --all
```

### Clone Repository (for team members)
```bash
git clone <repository-url>
cd heart-disease-analysis
```

## Commit Message Guidelines

### Format
```
<type>: <subject>

<body>

<footer>
```

### Types
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Formatting
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance

### Examples
```bash
git commit -m "feat: Add cholesterol filter to dashboard"
git commit -m "fix: Resolve database connection issue"
git commit -m "docs: Update setup guide with Tableau instructions"
git commit -m "style: Format Python code according to PEP 8"
```

## Troubleshooting

### Problem: Can't push to remote
```bash
# Pull first, then push
git pull origin <branch-name>
git push origin <branch-name>
```

### Problem: Merge conflicts
```bash
# 1. Open conflicted files
# 2. Resolve conflicts manually
# 3. Add resolved files
git add .
# 4. Commit
git commit -m "Resolved merge conflicts"
# 5. Push
git push origin <branch-name>
```

### Problem: Wrong branch
```bash
# Stash changes
git stash

# Switch to correct branch
git checkout <correct-branch>

# Apply stashed changes
git stash pop
```

### Problem: Committed to wrong branch
```bash
# On wrong branch
git log  # Note the commit hash

# Switch to correct branch
git checkout <correct-branch>

# Cherry-pick the commit
git cherry-pick <commit-hash>

# Go back to wrong branch
git checkout <wrong-branch>

# Remove the commit
git reset --hard HEAD~1
```

## Quick Reference

### Daily Workflow
```bash
# 1. Start work
git checkout <your-branch>
git pull origin <your-branch>

# 2. Make changes
# ... edit files ...

# 3. Save work
git add .
git commit -m "Description"
git push origin <your-branch>
```

### Check Everything
```bash
git status          # What changed?
git branch          # Which branch am I on?
git log --oneline   # What commits exist?
git remote -v       # Where is remote?
```

## Team Member Specific Commands

### Arpit Pandey (Your Commands)
```bash
# Start working
git checkout arpit-pandey
git pull origin arpit-pandey

# After making changes to Flask app, Tableau integration, etc.
git add .
git commit -m "feat: Completed Tableau integration and Flask embedding"
git push origin arpit-pandey

# To see your commits
git log --oneline

# To see what you changed
git diff
```

## GitHub Web Interface

### Creating Pull Request
1. Go to GitHub repository
2. Click "Pull requests"
3. Click "New pull request"
4. Select your branch
5. Click "Create pull request"
6. Add description
7. Submit for review

### Viewing Branches on GitHub
1. Go to repository
2. Click branch dropdown (shows "main")
3. See all branches
4. Switch between branches

## Best Practices

1. **Commit Often**: Small, frequent commits are better
2. **Meaningful Messages**: Describe what and why
3. **Pull Before Push**: Always pull latest changes first
4. **Test Before Commit**: Ensure code works
5. **Don't Commit Secrets**: Never commit .env files
6. **Use .gitignore**: Exclude unnecessary files
7. **Branch for Features**: Each task on separate branch
8. **Review Before Push**: Check what you're committing

## Emergency Commands

### Undo Everything (DANGER!)
```bash
# This will delete all uncommitted changes!
git reset --hard HEAD
git clean -fd
```

### Start Over from Remote
```bash
git fetch origin
git reset --hard origin/<branch-name>
```

---

## Need Help?

- Check status: `git status`
- Check branch: `git branch`
- View help: `git help <command>`
- Team lead: Create GitHub issue

---

**Remember**: Commit early, commit often, and always pull before you push!
