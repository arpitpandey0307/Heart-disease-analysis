# ⚡ HOW TO RUN THE APP - 5 MINUTES

## Option 1: Run Flask App Directly (NO DATABASE NEEDED)

### Step 1: Install Python packages (1 minute)
```bash
pip install flask
```

### Step 2: Run the app (30 seconds)
```bash
cd flask_app
python app.py
```

### Step 3: Open browser
Go to: **http://localhost:5000**

**DONE! The Flask app will run without database!**

---

## Option 2: With Database (If you have MySQL)

### Step 1: Install packages (1 minute)
```bash
pip install flask pandas mysql-connector-python
```

### Step 2: Create .env file
```bash
copy .env.example .env
notepad .env
```

Update:
```
DB_PASSWORD=your_mysql_password
```

### Step 3: Setup database (2 minutes)
```bash
cd scripts
python setup_database.py
```

This will load your `Heart_new2.csv` file into MySQL.

### Step 4: Run Flask app
```bash
cd flask_app
python app.py
```

### Step 5: Open browser
Go to: **http://localhost:5000**

---

## ⚡ FASTEST WAY (Just Flask, No Database):

1. Double-click `QUICK_RUN.bat`
2. Wait for "Running on http://127.0.0.1:5000"
3. Open browser: http://localhost:5000
4. **DONE!**

---

## 🎯 What You'll See:

- **Home Page** - Project overview
- **Dashboard Page** - Ready for Tableau embed
- **Story Page** - Ready for Tableau story
- **About Page** - Project information

---

## 📝 For Submission:

Just show:
1. The Flask app running (http://localhost:5000)
2. The GitHub repository (https://github.com/arpitpandey0307/Heart-disease-analysis)
3. The code files

**You don't need Tableau running to show the Flask app!**

---

## 🐛 If Error:

### "Flask not found"
```bash
pip install flask
```

### "Port 5000 already in use"
Edit `flask_app/app.py`, change last line to:
```python
app.run(debug=True, host='0.0.0.0', port=5001)
```
Then visit: http://localhost:5001

### "Python not found"
Make sure Python is installed and in PATH.

---

## ✅ YOU'RE READY!

The app will run even without database or Tableau. Just run it and show the interface!
