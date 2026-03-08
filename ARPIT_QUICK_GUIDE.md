# Quick Guide for Arpit Pandey

## Your Tasks Summary

1. ✅ Connect DB with Tableau
2. ✅ Amount of Data to DB
3. ✅ Utilization of Data Filters
4. ✅ Publishing
5. ✅ Dashboard and Story embed with UI With Flask

## Quick Start (Do This First!)

### 1. Setup Git Repository

```bash
# Run the setup script
setup_git.bat

# When prompted, enter your GitHub repository URL
# Example: https://github.com/arpitpandey/heart-disease-analysis.git
```

### 2. Switch to Your Branch

```bash
git checkout arpit-pandey
```

### 3. Setup Python Environment

```bash
# Run quick start
quick_start.bat

# Or manually:
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
```

### 4. Configure Environment

```bash
# Copy example env file
copy .env.example .env

# Edit .env with your credentials
notepad .env
```

Update these values:
```
DB_HOST=localhost
DB_PORT=3306
DB_NAME=heart_disease_db
DB_USER=root
DB_PASSWORD=your_password

TABLEAU_SERVER_URL=https://your-tableau-server.com
TABLEAU_USERNAME=your_username
TABLEAU_PASSWORD=your_password
```

## Step-by-Step Execution

### Step 1: Download Dataset

```bash
cd scripts
python download_dataset.py
```

Expected output: `data/heart_disease_raw.csv` created

### Step 2: Setup Database

```bash
python setup_database.py
```

This will:
- Create database
- Create tables
- Load data

Verify:
```bash
mysql -u root -p
USE heart_disease_db;
SELECT COUNT(*) FROM patients;
```

### Step 3: Prepare Data for Tableau

```bash
python prepare_data_for_tableau.py
```

This creates:
- `data/tableau_demographics.csv`
- `data/tableau_risk_factors.csv`
- `data/tableau_statistics.csv`
- `data/tableau_master_data.csv`

### Step 4: Connect Tableau to Database

1. Open Tableau Desktop
2. Click "Connect" → "MySQL"
3. Enter:
   - Server: localhost
   - Port: 3306
   - Database: heart_disease_db
   - Username: root
   - Password: [your password]
4. Click "Sign In"
5. Verify tables appear

### Step 5: Create Tableau Visualizations

Follow `docs/TABLEAU_GUIDE.md` to create:

**Required Visualizations (minimum 6):**
1. Disease prevalence by age group (Bar chart)
2. Cholesterol distribution (Histogram)
3. Risk factors correlation (Heat map)
4. Gender-based analysis (Pie chart)
5. BP vs Heart Rate (Scatter plot)
6. Trend analysis (Line chart)

**Required Calculation Fields (minimum 5):**
1. Disease Rate
2. Risk Score
3. Age Category
4. Cholesterol Status
5. BMI Category

**Required Filters (minimum 5):**
1. Age Range Slider
2. Gender Filter
3. Cholesterol Range
4. Blood Pressure Range
5. Disease Status

### Step 6: Create Dashboard

1. Create new dashboard
2. Drag visualizations onto dashboard
3. Add filters
4. Configure responsive design
5. Test interactivity

### Step 7: Create Story

Create 4+ story points:
1. Overview - Disease statistics
2. Risk Factors - Cholesterol, BP analysis
3. Demographics - Age/gender patterns
4. Insights - Key findings

### Step 8: Publish to Tableau Server

**Option A: Tableau Server**
1. Server → Publish Workbook
2. Enter server URL
3. Select project
4. Set permissions
5. Publish

**Option B: Tableau Public** (if no server)
1. Server → Tableau Public → Save to Tableau Public
2. Sign in
3. Publish
4. Get public URL

### Step 9: Get Embed Code

1. Open published workbook
2. Click Share button
3. Copy embed code
4. Save for Flask integration

### Step 10: Update Flask Application

Edit `flask_app/templates/dashboard.html`:

Replace the `#tableauViz` div content with your embed code:

```html
<script type='text/javascript' src='YOUR_TABLEAU_SERVER/javascripts/api/viz_v1.js'></script>
<div class='tableauPlaceholder'>
    <object class='tableauViz' width='100%' height='800'>
        <param name='host_url' value='YOUR_TABLEAU_SERVER' />
        <param name='embed_code_version' value='3' />
        <param name='site_root' value='' />
        <param name='name' value='HeartDiseaseAnalysis' />
        <param name='tabs' value='no' />
        <param name='toolbar' value='yes' />
    </object>
</div>
```

Do the same for `flask_app/templates/story.html`

### Step 11: Run Flask Application

```bash
cd flask_app
python app.py
```

Visit: http://localhost:5000

Test all pages:
- Home: http://localhost:5000/
- Dashboard: http://localhost:5000/dashboard
- Story: http://localhost:5000/story
- About: http://localhost:5000/about

### Step 12: Commit and Push Your Work

```bash
# Make sure you're on your branch
git checkout arpit-pandey

# Add all your changes
git add .

# Commit with message
git commit -m "feat: Completed Tableau integration, filters, publishing, and Flask embedding"

# Push to your branch
git push origin arpit-pandey
```

## Verification Checklist

### Database (Task 1 & 2)
- [ ] MySQL database created
- [ ] Tables created successfully
- [ ] Data loaded (300+ records)
- [ ] Can query data successfully
- [ ] Tableau connects to database

### Filters (Task 3)
- [ ] Age range filter implemented
- [ ] Gender filter implemented
- [ ] Cholesterol filter implemented
- [ ] Blood pressure filter implemented
- [ ] Disease status filter implemented
- [ ] Filters work across all visualizations

### Publishing (Task 4)
- [ ] Workbook published to Tableau Server/Public
- [ ] Public URL accessible
- [ ] Dashboard loads correctly
- [ ] Story loads correctly
- [ ] Embed code obtained

### Flask Application (Task 5)
- [ ] Flask app runs without errors
- [ ] Home page loads
- [ ] Dashboard page loads with embedded viz
- [ ] Story page loads with embedded viz
- [ ] About page loads
- [ ] API endpoint works
- [ ] Mobile responsive

## Common Issues & Solutions

### Issue: MySQL connection fails
```bash
# Check if MySQL is running
mysql --version

# Test connection
mysql -u root -p

# If password issues, reset MySQL password
```

### Issue: Tableau can't connect
- Install MySQL JDBC driver
- Check MySQL allows remote connections
- Verify credentials

### Issue: Flask won't start
```bash
# Reinstall dependencies
pip install -r requirements.txt

# Check Python version
python --version  # Should be 3.8+

# Try different port
python app.py --port 5001
```

### Issue: Embed code not working
- Verify Tableau workbook is published
- Check embed code is complete
- Ensure workbook is public
- Test embed code in simple HTML first

## Screenshots Needed

Take screenshots of:
1. Database connection in Tableau
2. Each visualization
3. Complete dashboard
4. Story with all scenes
5. Flask home page
6. Flask dashboard with embedded viz
7. Flask story with embedded viz
8. Mobile view

## Files You'll Modify

- `.env` - Your database and Tableau credentials
- `flask_app/templates/dashboard.html` - Add Tableau embed code
- `flask_app/templates/story.html` - Add Tableau embed code
- `README.md` - Add your demo links

## Demo Preparation

For your demo, show:
1. Database with data loaded
2. Tableau connection to database
3. All visualizations working
4. Filters in action
5. Published dashboard URL
6. Flask application running
7. Embedded dashboards working
8. Mobile responsiveness

## Time Estimate

- Database setup: 30 minutes
- Tableau connection: 15 minutes
- Create visualizations: 2 hours
- Implement filters: 30 minutes
- Create dashboard: 1 hour
- Create story: 1 hour
- Publish: 30 minutes
- Flask integration: 1 hour
- Testing: 1 hour
- **Total: ~8 hours**

## Need Help?

1. Check `docs/TASK_ARPIT_PANDEY.md` for detailed instructions
2. See `docs/TABLEAU_GUIDE.md` for Tableau help
3. Review `GIT_COMMANDS.md` for Git help
4. Ask team members via GitHub issues

## Final Push

When everything is complete:

```bash
# Make sure all changes are committed
git status

# Add any remaining files
git add .

# Final commit
git commit -m "feat: All tasks completed - ready for submission"

# Push to your branch
git push origin arpit-pandey

# Verify on GitHub
# Go to your repository and check arpit-pandey branch
```

## Submission

Update README.md with:
- [ ] GitHub repository URL
- [ ] Tableau dashboard URL
- [ ] Video demo URL (if you're making one)
- [ ] Live Flask URL (if deployed)

---

**You've got this! Follow the steps, test thoroughly, and you'll have a great project to submit.** 🚀

For detailed documentation, see:
- `docs/TASK_ARPIT_PANDEY.md` - Your specific tasks
- `docs/TABLEAU_GUIDE.md` - Tableau instructions
- `docs/SETUP_GUIDE.md` - Complete setup
- `GIT_COMMANDS.md` - Git reference
