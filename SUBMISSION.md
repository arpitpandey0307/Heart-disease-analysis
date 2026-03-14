# Heart Disease Analysis - Project Submission

## Team Members

| Name | Role | Tasks Completed |
|------|------|-----------------|
| **Arpit Pandey** | Database & Flask Integration | Database setup, Flask application, Publishing |
| **Atul Singh** | Data Collection | Dataset download and preparation |
| **Cyrus Prakash Tiwari** | Database & Visualizations | SQL operations, Tableau visualizations |
| **Atul Raj Gautam** | Dashboard Design & Documentation | Dashboard design, Story creation, Documentation |

## Project Deliverables

### ✅ Completed Components

#### 1. Database Layer
- MySQL database schema created (`sql/01_create_database.sql`)
- 7 comprehensive SQL analysis queries (`sql/02_analysis_queries.sql`)
- Automated database setup script (`scripts/setup_database.py`)
- Sample dataset with 300+ patient records

#### 2. Data Processing
- Dataset download automation (`scripts/download_dataset.py`)
- Data preparation for Tableau (`scripts/prepare_data_for_tableau.py`)
- Multiple CSV exports optimized for visualization

#### 3. Tableau Analysis
- 6+ unique visualizations designed
- 5+ calculation fields defined
- 5+ interactive data filters
- Responsive dashboard layout
- 4+ story scenes with narrative
- Complete documentation in `tableau/README.md`

#### 4. Flask Web Application
- Complete web application (`flask_app/`)
- 5 responsive HTML pages
- Dashboard embedding capability
- API endpoint for statistics
- Professional UI with Bootstrap

#### 5. Documentation
- Complete project documentation (`docs/PROJECT_DOCUMENTATION.md`)
- Setup guide (`docs/SETUP_GUIDE.md`)
- Tableau guide (`docs/TABLEAU_GUIDE.md`)
- Team task guides for each member
- README with project overview

## Technical Architecture

```
Data Source (UCI ML) → MySQL Database → Tableau → Dashboard → Flask Web App → End Users
```

## Key Features

### Data Analysis
- 300+ patient records analyzed
- 14 health attributes tracked
- Multiple risk factors identified
- Demographic patterns revealed

### Visualizations
1. Disease prevalence by age group
2. Cholesterol distribution analysis
3. Risk factor correlation heat map
4. Gender-based disease analysis
5. Blood pressure vs heart rate patterns
6. Chest pain type analysis

### Calculation Fields
1. Disease Rate calculation
2. Risk Score categorization
3. Age Category grouping
4. Cholesterol Status classification
5. Blood Pressure Category

### Interactive Features
- Age range filter
- Gender filter
- Cholesterol range filter
- Blood pressure filter
- Disease status filter

## Project Scenarios Addressed

### Scenario 1: Clinical Analysis
Dr. Sharma can analyze patient data by age, gender, BMI, cholesterol, and smoking habits to identify high-risk groups.

### Scenario 2: Policy Making
Government health departments can study disease prevalence trends across regions for policy development.

### Scenario 3: Personal Health
Individuals can monitor their health risks using simplified dashboards for informed lifestyle decisions.

## Technologies Used

- **Database**: MySQL 8.0
- **Backend**: Python 3.8+, Flask 3.0
- **Visualization**: Tableau Desktop
- **Frontend**: HTML5, CSS3, Bootstrap 5
- **Data Processing**: Pandas, NumPy

## Installation & Setup

```bash
# Clone repository
git clone https://github.com/arpitpandey0307/Heart-disease-analysis.git
cd Heart-disease-analysis

# Install dependencies
pip install -r requirements.txt

# Setup database
python scripts/setup_database.py

# Run Flask application
cd flask_app
python app.py
```

## Repository Structure

```
Heart-disease-analysis/
├── data/                  # Dataset files
├── sql/                   # Database scripts
├── scripts/               # Python automation scripts
├── tableau/               # Tableau documentation
├── flask_app/             # Web application
├── docs/                  # Project documentation
└── README.md              # Project overview
```

## GitHub Repository
https://github.com/arpitpandey0307/Heart-disease-analysis

## Project Highlights

✅ Complete end-to-end solution
✅ Professional code structure
✅ Comprehensive documentation
✅ Scalable architecture
✅ Production-ready application
✅ Team collaboration demonstrated

## Conclusion

This project successfully demonstrates the use of Tableau for heart disease data analysis, providing actionable insights for healthcare providers, policymakers, and individuals. The complete solution includes database management, data processing, interactive visualizations, and web integration.

---

**Submitted by**: Arpit Pandey and Team
**Date**: March 2024
**Course**: Data Visualization with Tableau
