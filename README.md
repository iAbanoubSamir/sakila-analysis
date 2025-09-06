# Sakila Data Analysis Project

A comprehensive analysis of the Sakila DVD Rental Database using Python, Pandas, and MySQL to uncover insights about customer behavior, film performance, and store operations.

## 📊 Project Overview

This project analyzes the Sakila DVD Rental Database to understand patterns, trends, and relationships in movie rental behavior. We focus on key metrics like customer spending, film popularity, rental frequencies, and store performance to provide meaningful insights about the business operations.

## 🔍 Key Features

- Customer behavior analysis and segmentation
- Film performance and category analysis
- Rental activity trends over time
- Store-level performance comparison
- Revenue analysis and tracking
- Advanced data visualization
- MySQL integration for robust data storage

## 🛠️ Technologies Used

- Python - Primary programming language
- Pandas - Data manipulation and analysis
- Matplotlib - Data visualization
- Seaborn - Statistical data visualization
- MySQL - Database management
- SQLAlchemy - Database ORM
- Jupyter Notebook - Interactive development
- Docker - Containerization

Dataset: [Sakila Sample Database - MySQL](https://dev.mysql.com/doc/sakila/en/)

## 📂 Project Structure

```
sakila-data-analysis/
├── SakilaDataAnalysis.ipynb    # Main analysis notebook
├── mysql.yml                   # Docker compose configuration
├── requirements.txt            # Python dependencies
├── databases/
│   ├── original/              # Original SQL scripts
│   │   ├── sakila-schema.sql  # Database schema
│   │   └── sakila-data.sql    # Sample data
│   └── sql_generated_reports/ # Generated CSV reports
├── sql/                       # SQL queries
└── README.md                  # Project documentation
```

## 📈 Key Insights

1. Customer Analysis
   - Top customers by spending and rental frequency
   - Customer spending distribution
   - Customer segmentation analysis
   - Store-wise customer behavior

2. Film Performance
   - Top performing films by revenue and rentals
   - Category-wise performance analysis
   - Identification of underperforming films
   - Popular films per category

3. Rental Trends
   - Monthly revenue and rental patterns
   - Daily rental distribution
   - Store-level performance metrics
   - Rental duration analysis

## 🚀 Getting Started

1. Clone the repository
```bash
git clone https://github.com/iAbanoubSamir/sakila-analysis.git
cd sakila-data-analysis
```

2. Set up the environment
```bash
docker-compose -f mysql.yml up -d
```

3. Install Python dependencies
```bash
pip install -r requirements.txt
```

4. Setup MySQL with MySQL-Workbench
   - Access it through port 3000
   - Set up your connection using the credentials in mysql.yml
   - Import the Sakila database using the provided SQL scripts

5. Launch Jupyter Notebook
   - Access through the Docker container
   - Open `SakilaDataAnalysis.ipynb`

## 📊 Data Processing

The analysis includes several data processing steps:

- Loading data from MySQL database
- Converting date formats
- Handling missing values
- Creating summary reports
- Feature engineering (e.g., rental duration calculation)
- Customer segmentation

## 🔍 Analysis Features

1. Customer Analysis
   - Spending patterns
   - Rental frequency
   - Customer segmentation
   - Store preferences

2. Film Analysis
   - Revenue generation
   - Rental popularity
   - Category performance
   - Inventory utilization

3. Business Metrics
   - Revenue trends
   - Store performance
   - Category popularity
   - Customer lifetime value

## 📊 Visualizations

The project includes several key visualizations that help understand the rental business patterns:

### Customer Spending Analysis
Shows the distribution of customer spending and identifies top customers by total spent and rental frequency.
![Top 10 Customers by Total Spent](figures/Top%2010%20Customers%20by%20Total%20Spent.png)

### Film Category Performance
Displays the performance of different film categories by both revenue and number of rentals, helping identify the most profitable genres.
![Top Rentals per Film Category](figures/Total%20Rentals%20per%20Film%20Category.png)

### Rental Activity Trends
Visualizes daily and monthly rental patterns, providing insights into business seasonality and growth trends.
![Monthly Rentals Trend](figures/Monthly%20Rentals%20Trend.png)

### Store Performance Comparison
Compares the performance of different stores based on revenue, number of rentals, and customer base.
![Total Revenue per Store](figures/Total%20Revenue%20per%20Store.png)

And there are more figures and visualizations in the notebook.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is open source and available under the MIT License.
