# 📊 Workflow Insight Panel (Project Management) 

## 📌 Project Overview
This project focuses on analyzing **Project Management data** to uncover insights regarding:
- Project workload distribution
- Forecasted vs. budgeted hours
- Cost analysis across different departments
- Trends in ticket closures and project statuses
- Relationship between hours worked and cost
- Identifying projects needing additional resources

## 📂 Dataset Information
The dataset includes key details such as:
- **Project Codes & Statuses** (Ongoing, Closed, Under Development)
- **Time Tracking**: Hours Worked, Budgeted, and Forecasted
- **Financial Data**: Cost Rates, Department-wise Expenses
- **Ticket Analysis**: Ticket Severity, Origins, and Sites
- **Start & End Dates** for projects

## 📊 Key Questions Answered
1. **What is the average number of hours worked per month for each project?**
   - *Visualization:* Bar chart showing **average hours worked per month** by project.

2. **Is there a relationship between "Project Status" and "Forecast Budget"?**
   - *Visualization:* Bar chart comparing **forecasted vs. budgeted hours** for different project statuses.

3. **What are the most common ticket types based on "Stage" and "Site"?**
   - *Visualization:* Stacked bar chart analyzing **ticket distribution** by stage and site.

4. **What is the total time spent in each stage of the project?**
   - *Visualization:* Bar chart showing **total hours per stage**.

5. **How are costs distributed across different departments?**
   - *Visualization:* Department-wise **cost distribution bar chart**.

6. **Which projects are expected to require the most hours in the future?**
   - *Visualization:* Bar chart predicting projects that require **maximum future working hours**.

7. **Is there an increasing trend in "Closed" or "Open" tickets over time?**
   - *Visualization:* **Line chart** tracking the increase or decrease in **Closed vs. Open tickets**.

8. **How can projects be classified based on "Number of Hours" and "Budget"?**
   - *Visualization:* **Scatter plot** comparing **total hours worked** vs. **budgeted hours**.

9. **What is the relationship between the number of hours and "Cost" across departments or sites?**
   - *Visualization:* **Scatter plot** analyzing the relationship between **workload and cost**.

10. **Which projects might need additional resources based on hours or cost?**
    - *Visualization:* **Bar chart** highlighting projects that might require **extra resources**.

## 🔧 Technologies Used
- **Python** 🐍 (Data Analysis and Visualization)
- **Pandas** 📊 (Data Processing)
- **Matplotlib & Seaborn** 🎨 (Data Visualization)
- **SQL (optional)** (For Data Querying and Aggregation)
- **PowerPoint** 📄 (Presentation Report)

## 📂 Project Structure
```
📁 Sales-Data-Analysis-Week2
│── 📄 sales_cleaned.xlsx       # Processed dataset
│── 📜 Project_week_2.ipynb     # Jupyter Notebook for analysis
│── 📝 Project_week_2.py        # Converted Python script
│── 📊 Sales_Data_Presentation.pptx  # PowerPoint report
│── 📘 README.md                # Project Documentation (This file)
```

## 📌 How to Run the Project
### **1️⃣ Clone the repository**
```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/Sales-Data-Analysis-Week2.git
cd Sales-Data-Analysis-Week2
```
### **2️⃣ Install required libraries**
```bash
pip install pandas matplotlib seaborn openpyxl
```
### **3️⃣ Run the Python analysis script**
```bash
python Project_week_2.py
```
---

## 🔗 Contact
For any queries, reach out via **GitHub Issues** or email **ismaeel.sobhy@gmail.com** 📧.

---

### ✅ Next Steps
- [ ] **Add Interactive Dashboards** using **Plotly**
- [ ] **Automate Data Updates**
- [ ] **Optimize SQL Queries**
- [ ] **Deploy as a Web Application**
