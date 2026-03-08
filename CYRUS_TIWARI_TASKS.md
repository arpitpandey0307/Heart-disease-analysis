# Cyrus Prakash Tiwari - Task Completion Guide

## Your Assigned Tasks
1. ✅ Storing Data in DB & Perform SQL Operations
2. ✅ No of Unique Visualizations
3. ✅ No of Calculation Fields

---

## Task 1: Database Setup & SQL Operations

### Files Created for You
- ✅ `sql/01_create_database.sql` - Database schema
- ✅ `sql/02_analysis_queries.sql` - Analysis queries
- ✅ `scripts/setup_database.py` - Automated setup

### Step 1: Setup Database

```bash
# Activate virtual environment
venv\Scripts\activate

# Run database setup
cd scripts
python setup_database.py
```

### Step 2: Verify Database

```bash
# Connect to MySQL
mysql -u root -p

# Use database
USE heart_disease_db;

# Check tables
SHOW TABLES;

# Check data
SELECT COUNT(*) FROM patients;
SELECT * FROM patients LIMIT 10;
```

### Step 3: Run Analysis Queries

```bash
# In MySQL
SOURCE sql/02_analysis_queries.sql;
```

### SQL Queries Included

1. **Disease Prevalence** - Count by disease status
2. **Cholesterol Analysis** - Average by age group and gender
3. **High-Risk Patients** - Multiple risk factors
4. **Chest Pain Analysis** - Disease rate by pain type
5. **Exercise Analysis** - Angina correlation
6. **Heart Rate Analysis** - By age decade
7. **Risk Factor Correlation** - Multiple factors

---

## Task 2: Create Unique Visualizations (Minimum 6)

### Required Visualizations

#### 1. Disease Prevalence by Age Group
**Type**: Bar Chart
- Rows: Age Group
- Columns: Count of Patients
- Color: Has Disease
- Filter: Gender

#### 2. Cholesterol Distribution
**Type**: Histogram
- Rows: Cholesterol
- Columns: Count
- Color: Cholesterol Category
- Bins: 20 mg/dl intervals

#### 3. Risk Factors Heat Map
**Type**: Heat Map
- Rows: Age Group
- Columns: Cholesterol Category
- Color: Disease Rate
- Size: Patient Count

#### 4. Gender Analysis
**Type**: Pie Chart
- Angle: Count of Patients
- Color: Gender
- Label: Percentage

#### 5. Blood Pressure vs Heart Rate
**Type**: Scatter Plot
- Rows: Max Heart Rate
- Columns: Resting BP
- Color: Has Disease
- Size: Age

#### 6. Chest Pain Type Analysis
**Type**: Stacked Bar Chart
- Rows: Chest Pain Type
- Columns: Count
- Color: Disease Status

#### 7. Exercise-Induced Angina (Bonus)
**Type**: Grouped Bar Chart
- Rows: Exercise Angina
- Columns: Count
- Color: Gender
- Split by: Disease Status

---

## Task 3: Calculation Fields (Minimum 5)

### Required Calculated Fields

#### 1. Disease Rate
```tableau
SUM([Has Disease]) / COUNT([Patient ID])
```

#### 2. Risk Score
```tableau
IF [Cholesterol] > 240 AND [Resting BP] > 140 THEN "High Risk"
ELSEIF [Cholesterol] > 200 OR [Resting BP] > 120 THEN "Medium Risk"
ELSE "Low Risk"
END
```

#### 3. Age Category
```tableau
IF [Age] < 40 THEN "Young"
ELSEIF [Age] <= 60 THEN "Middle-aged"
ELSE "Senior"
END
```

#### 4. Cholesterol Status
```tableau
IF [Cholesterol] < 200 THEN "Normal"
ELSEIF [Cholesterol] < 240 THEN "Borderline High"
ELSE "High"
END
```

#### 5. Blood Pressure Category
```tableau
IF [Resting BP] < 120 THEN "Normal"
ELSEIF [Resting BP] < 140 THEN "Prehypertension"
ELSE "Hypertension"
END
```

#### 6. Heart Rate Zone (Bonus)
```tableau
IF [Max Heart Rate] < 100 THEN "Low"
ELSEIF [Max Heart Rate] < 150 THEN "Moderate"
ELSE "High"
END
```

#### 7. Comprehensive Risk Score (Bonus)
```tableau
(IF [Cholesterol] > 240 THEN 1 ELSE 0 END) +
(IF [Resting BP] > 140 THEN 1 ELSE 0 END) +
(IF [Fasting Blood Sugar] = 1 THEN 1 ELSE 0 END) +
(IF [Exercise Induced Angina] = 1 THEN 1 ELSE 0 END)
```

---

## Tableau Workflow

### Step 1: Connect to Database
1. Open Tableau Desktop
2. Connect → MySQL
3. Server: localhost
4. Database: heart_disease_db
5. Username: root
6. Password: [your password]

### Step 2: Create Calculated Fields
1. Right-click in Data pane
2. Create Calculated Field
3. Name it (e.g., "Disease Rate")
4. Enter formula
5. Click OK
6. Repeat for all 5+ fields

### Step 3: Create Visualizations
1. Create new worksheet for each viz
2. Drag fields to Rows/Columns
3. Add colors, sizes, labels
4. Apply filters
5. Format and style
6. Name worksheet clearly

### Step 4: Verify Requirements
- [ ] At least 6 unique visualizations
- [ ] At least 5 calculation fields
- [ ] All visualizations use calculated fields
- [ ] Proper formatting and labels
- [ ] Filters applied where needed

---

## Testing Checklist

### Database
- [ ] Database created successfully
- [ ] Tables have correct schema
- [ ] Data loaded (300+ records)
- [ ] All SQL queries execute
- [ ] No errors in query results

### Visualizations
- [ ] All 6+ visualizations created
- [ ] Each viz shows meaningful insights
- [ ] Colors are consistent
- [ ] Labels are clear
- [ ] Tooltips are informative

### Calculations
- [ ] All 5+ fields created
- [ ] Formulas are correct
- [ ] No errors in calculations
- [ ] Used in visualizations
- [ ] Produce expected results

---

## Deliverables

1. **Database**
   - heart_disease_db with patients table
   - 300+ records loaded
   - SQL queries tested

2. **Tableau Workbook**
   - 6+ unique visualizations
   - 5+ calculation fields
   - Saved as: HeartDiseaseAnalysis.twbx

3. **Screenshots**
   - Each visualization
   - Calculation field formulas
   - Database connection

---

## Commit Your Work

```bash
# Add all changes
git add .

# Commit with message
git commit -m "feat(cyrus): Completed database setup, SQL queries, visualizations, and calculations"

# Push to your branch
git push origin gyan
```

---

## Need Help?

- Check `docs/TABLEAU_GUIDE.md` for detailed Tableau instructions
- Review `sql/02_analysis_queries.sql` for query examples
- See `docs/SETUP_GUIDE.md` for database setup help

---

## Status: READY TO EXECUTE
All SQL scripts and guides are ready. Follow the steps to complete your tasks!
