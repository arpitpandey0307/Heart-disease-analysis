# Task Documentation - Arpit Pandey

## Assigned Tasks

1. **Connect DB with Tableau**
2. **Amount of Data to DB**
3. **Utilization of Data Filters**
4. **Publishing**
5. **Dashboard and Story embed with UI With Flask**

---

## Task 1: Connect DB with Tableau

### Objective
Establish connection between MySQL database and Tableau for data visualization.

### Steps

1. **Verify Database Setup**
```bash
cd scripts
python setup_database.py
```

2. **Test Database Connection**
```bash
mysql -u root -p
USE heart_disease_db;
SELECT COUNT(*) FROM patients;
```

3. **Connect Tableau to MySQL**
- Open Tableau Desktop
- Click "Connect" → "MySQL"
- Enter credentials:
  - Server: localhost
  - Port: 3306
  - Database: heart_disease_db
  - Username: [from .env]
  - Password: [from .env]

4. **Verify Data**
- Check all tables are visible
- Preview data in Tableau
- Verify field types are correct

### Deliverables
- ✅ Successful database connection
- ✅ All tables accessible in Tableau
- ✅ Screenshot of connection settings

---

## Task 2: Amount of Data to DB

### Objective
Ensure appropriate amount of data is loaded into database for analysis.

### Steps

1. **Check Current Data Volume**
```sql
SELECT COUNT(*) as total_records FROM patients;
SELECT 
    COUNT(*) as total,
    COUNT(DISTINCT age) as unique_ages,
    COUNT(DISTINCT gender) as genders,
    MIN(age) as min_age,
    MAX(age) as max_age
FROM patients;
```

2. **Verify Data Quality**
```sql
-- Check for missing values
SELECT 
    COUNT(*) - COUNT(cholesterol) as missing_cholesterol,
    COUNT(*) - COUNT(resting_bp) as missing_bp
FROM patients;

-- Check data distribution
SELECT target, COUNT(*) as count 
FROM patients 
GROUP BY target;
```

3. **Data Validation**
- Ensure minimum 300+ records
- Verify balanced distribution
- Check all required fields are populated

### Deliverables
- ✅ Database contains adequate records (300+)
- ✅ Data quality report
- ✅ SQL query results documented

---

## Task 3: Utilization of Data Filters

### Objective
Implement comprehensive data filters in Tableau dashboards.

### Required Filters

1. **Age Filter**
   - Type: Range slider
   - Range: 20-80 years
   - Apply to: All worksheets

2. **Gender Filter**
   - Type: Single value dropdown
   - Options: All, Male, Female
   - Apply to: All worksheets

3. **Cholesterol Filter**
   - Type: Range slider
   - Range: 100-400 mg/dL
   - Apply to: Relevant worksheets

4. **Blood Pressure Filter**
   - Type: Range slider
   - Range: 80-200 mmHg
   - Apply to: Relevant worksheets

5. **Disease Status Filter**
   - Type: Single value list
   - Options: All, With Disease, Without Disease
   - Apply to: All worksheets

### Implementation Steps

1. Create filters in Tableau
2. Add to dashboard
3. Configure filter actions
4. Test interactivity
5. Verify performance

### Deliverables
- ✅ Minimum 5 data filters implemented
- ✅ Filters work across all visualizations
- ✅ Screenshot of filter panel

---

## Task 4: Publishing

### Objective
Publish Tableau workbook to Tableau Server/Public for web access.

### Steps

1. **Prepare Workbook**
```
- Save workbook: HeartDiseaseAnalysis.twbx
- Test all dashboards
- Verify all filters work
- Check story navigation
```

2. **Publish to Tableau Server**
- Server → Publish Workbook
- Enter server URL: [from .env]
- Select project: Heart Disease Analysis
- Set permissions: View for all users

3. **Alternative: Tableau Public**
If no Tableau Server:
- Server → Tableau Public → Save to Tableau Public
- Sign in with Tableau Public account
- Publish workbook

4. **Get Embed Code**
- Open published workbook
- Click Share button
- Copy embed code
- Save for Flask integration

### Deliverables
- ✅ Workbook published successfully
- ✅ Public URL accessible
- ✅ Embed code obtained
- ✅ Screenshot of published dashboard

---

## Task 5: Dashboard and Story Embed with UI With Flask

### Objective
Create Flask web application with embedded Tableau dashboards.

### Implementation

1. **Flask Application Structure**
```
flask_app/
├── app.py                 # Main application
├── templates/
│   ├── base.html         # Base template
│   ├── index.html        # Home page
│   ├── dashboard.html    # Dashboard page
│   ├── story.html        # Story page
│   └── about.html        # About page
└── static/
    └── css/
        └── style.css     # Custom styles
```

2. **Update Embed Code**

Edit `flask_app/templates/dashboard.html`:
```html
<!-- Replace the tableauViz div content with your embed code -->
<div id="tableauViz">
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
</div>
```

3. **Update Story Embed**

Edit `flask_app/templates/story.html` similarly.

4. **Configure Environment**

Update `.env`:
```
TABLEAU_SERVER_URL=https://your-tableau-server.com
TABLEAU_SITE_ID=your_site_id
```

5. **Run Flask Application**
```bash
cd flask_app
python app.py
```

6. **Test Application**
- Navigate to http://localhost:5000
- Test all pages
- Verify dashboards load
- Check responsiveness

### Deliverables
- ✅ Flask application running
- ✅ Dashboard embedded successfully
- ✅ Story embedded successfully
- ✅ All pages functional
- ✅ Responsive design working
- ✅ Screenshots of web application

---

## Testing Checklist

- [ ] Database connection successful
- [ ] Data loaded correctly (300+ records)
- [ ] All filters implemented and working
- [ ] Workbook published to server
- [ ] Public URL accessible
- [ ] Flask application running
- [ ] Dashboard embedded in web app
- [ ] Story embedded in web app
- [ ] All pages load correctly
- [ ] Responsive on mobile devices

---

## Submission Requirements

1. **Code Repository**
   - Push all code to GitHub
   - Include .env.example (not .env)
   - Update README with setup instructions

2. **Documentation**
   - Screenshots of each completed task
   - Database connection proof
   - Published dashboard URL
   - Flask application screenshots

3. **Demo**
   - Live Flask application
   - Working Tableau dashboards
   - All filters functional

---

## Troubleshooting

### Database Connection Issues
```bash
# Test MySQL connection
mysql -u root -p -e "SHOW DATABASES;"

# Verify data
mysql -u root -p heart_disease_db -e "SELECT COUNT(*) FROM patients;"
```

### Tableau Connection Issues
- Verify MySQL JDBC driver installed
- Check firewall settings
- Ensure MySQL allows remote connections

### Flask Issues
```bash
# Install dependencies
pip install -r requirements.txt

# Check Flask version
python -c "import flask; print(flask.__version__)"

# Run with debug mode
export FLASK_ENV=development
python app.py
```

---

## Resources

- [Tableau MySQL Connection Guide](https://help.tableau.com/current/pro/desktop/en-us/examples_mysql.htm)
- [Tableau JavaScript API](https://help.tableau.com/current/api/js_api/en-us/JavaScriptAPI/js_api.htm)
- [Flask Documentation](https://flask.palletsprojects.com/)

---

## Contact

For questions or issues, contact team members:
- Database: Cyrus Prakash Tiwari
- Visualizations: Atul Raj Gautam
- Data Collection: Atul Singh
