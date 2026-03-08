# Contributing to Heart Disease Analysis Project

## Team Members & Branches

### Branch Structure

- `main` - Production-ready code
- `atul-singh` - Atul Singh's work (Data Collection)
- `cyrus-tiwari` - Cyrus Prakash Tiwari's work (Database & SQL)
- `arpit-pandey` - Arpit Pandey's work (Tableau Integration & Flask)
- `atul-gautam` - Atul Raj Gautam's work (Data Prep & Dashboard Design)

## Workflow

### 1. Working on Your Branch

```bash
# Switch to your branch
git checkout <your-branch-name>

# Pull latest changes
git pull origin <your-branch-name>

# Make your changes
# ... edit files ...

# Stage changes
git add .

# Commit with meaningful message
git commit -m "Description of changes"

# Push to your branch
git push origin <your-branch-name>
```

### 2. Task Assignments

#### Atul Singh
- Download dataset
- Create video demonstration
- Document end-to-end solution

#### Cyrus Prakash Tiwari
- Setup MySQL database
- Write SQL queries
- Create unique visualizations
- Implement calculation fields

#### Arpit Pandey
- Connect Tableau to database
- Implement data filters
- Publish to Tableau Server
- Create Flask web application
- Embed dashboards and stories

#### Atul Raj Gautam
- Prepare data for visualization
- Design responsive dashboard
- Create story scenes
- Write project documentation

### 3. Merging to Main

Once your task is complete:

```bash
# Ensure your branch is up to date
git checkout <your-branch-name>
git pull origin <your-branch-name>

# Create pull request on GitHub
# Team lead will review and merge
```

## Code Standards

### Python
- Follow PEP 8 style guide
- Add docstrings to functions
- Use meaningful variable names
- Comment complex logic

### SQL
- Use uppercase for SQL keywords
- Indent nested queries
- Add comments for complex queries
- Use meaningful table/column names

### Tableau
- Use consistent color schemes
- Add descriptive titles
- Include tooltips
- Document calculated fields

### Flask/HTML
- Follow HTML5 standards
- Use Bootstrap classes
- Keep templates organized
- Add comments for complex sections

## Commit Message Format

```
<type>: <subject>

<body>

<footer>
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Adding tests
- `chore`: Maintenance tasks

Example:
```
feat: Add cholesterol filter to dashboard

- Implemented range slider for cholesterol filtering
- Applied filter to all relevant visualizations
- Tested with different data ranges

Closes #123
```

## Testing Before Commit

### Database Changes
```bash
python scripts/setup_database.py
# Verify no errors
```

### Python Scripts
```bash
python scripts/<your-script>.py
# Ensure it runs without errors
```

### Flask Application
```bash
cd flask_app
python app.py
# Test all routes in browser
```

## Getting Help

- Check documentation in `docs/` folder
- Ask team members via GitHub issues
- Review existing code for examples
- Consult official documentation

## Pull Request Checklist

- [ ] Code follows project standards
- [ ] All tests pass
- [ ] Documentation updated
- [ ] No merge conflicts
- [ ] Meaningful commit messages
- [ ] Code reviewed by at least one team member

## Questions?

Contact project lead or create an issue on GitHub.
