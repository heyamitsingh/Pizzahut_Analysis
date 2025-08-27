# 🍕 Pizzahut Data Analysis: Exploring Orders, Sales, and Trends

## 📌 Project Overview
This project focuses on analyzing **Pizzahut order and sales data** to understand business patterns and gain insights into:
- Revenue trends  
- Ordering behavior  
- Top-selling pizzas and categories  

By writing optimized **SQL queries in PostgreSQL**, the project aims to uncover valuable insights that can guide business decisions.  

---

## 📂 Dataset
- **Source:** Kaggle
- **Format:** CSV files  
- **Tables:** Multiple related tables (Orders, Order Details, Pizzas, Pizza Types, etc.)  
- **Key Fields:** Order ID, Date, Time, Pizza Type, Size, Quantity, Price  

---

## 🗄️ Database & Tools
- **Database:** PostgreSQL  
- **Version:** PostgreSQL 15+ (recommended)  
- **Tools Used:**  
  - pgAdmin / DBeaver for running queries  
  - GitHub for project version control  
  - *(Planned)* Power BI for advanced visualization  

---

## 🛠️ SQL Concepts Covered
The project demonstrates hands-on use of:  
- `GROUP BY`, `HAVING`  
- `ORDER BY`, `LIMIT`  
- `JOINS`  
- `WINDOW FUNCTIONS`  
- `SUBQUERIES`  

---

## 📊 Entity-Relationship Diagram (ERD)
The database contains **multiple related tables** to represent orders, pizzas, categories, and sizes.  
📌 ERD is available here:  
![ERD](docs/erd.png)  

---

## 🔍 Analysis & Key Questions
The project addresses the following business questions using SQL:

1. Retrieve the total number of orders placed.  
2. Calculate the total revenue generated from pizza sales.  
3. Identify the highest-priced pizza.  
4. Identify the most common pizza size ordered.  
5. List the top 5 most ordered pizza types along with their quantities.  
6. Join the necessary tables to find the total quantity of each pizza category ordered.  
7. Determine the distribution of orders by hour of the day.  
8. Join relevant tables to find the category-wise distribution of pizzas.  
9. Group the orders by date and calculate the average number of pizzas ordered per day.  
10. Determine the top 3 most ordered pizza types based on revenue.  
11. Calculate the percentage contribution of each pizza type to total revenue.  
12. Analyze the cumulative revenue generated over time.  
13. Determine the top 3 most ordered pizza types based on revenue for each pizza category.

---

## 📊 Findings

Below are the key insights from the analysis.  
Each question contains the SQL query and its output (screenshots).  

---

<details>
  <summary><strong>Q1. Retrieve the total number of orders placed</strong></summary>

  **Query:**
  ![Q1 Query](findings/Q1_total_orders_query.png)

  **Output:**
  ![Q1 Output](findings/Q1_total_orders_output.png)

</details>

---

<details>
  <summary><strong>Q2. Calculate the total revenue generated from pizza sales</strong></summary>

  **Query:**
  ![Q2 Query](findings/Q2_total_revenue_query.png)

  **Output:**
  ![Q2 Output](findings/Q2_total_revenue_output.png)

</details>

---

<details>
  <summary><strong>Q3. Identify the highest-priced pizza</strong></summary>

  **Query:**
  ![Q3 Query](findings/Q3_highest_price_query.png)

  **Output:**
  ![Q3 Output](findings/Q3_highest_price_output.png)

</details>

---

<details>
  <summary><strong>Q4. Identify the most common pizza size ordered</strong></summary>

  **Query:**
  ![Q4 Query](findings/Q4_common_size_query.png)

  **Output:**
  ![Q4 Output](findings/Q4_common_size_output.png)

</details>

---

<details>
  <summary><strong>Q5. List the top 5 most ordered pizza types along with their quantities</strong></summary>

  **Query:**
  ![Q5 Query](findings/Q5_top5_pizza_query.png)

  **Output:**
  ![Q5 Output](findings/Q5_top5_pizza_output.png)

</details>

---

<details>
  <summary><strong>Q6. Total quantity of each pizza category ordered (using joins)</strong></summary>

  **Query:**
  ![Q6 Query](findings/Q6_category_quantity_query.png)

  **Output:**
  ![Q6 Output](findings/Q6_category_quantity_output.png)

</details>

---

<details>
  <summary><strong>Q7. Distribution of orders by hour of the day</strong></summary>

  **Query:**
  ![Q7 Query](findings/Q7_orders_by_hour_query.png)

  **Output:**
  ![Q7 Output](findings/Q7_orders_by_hour_output.png)

</details>

---

<details>
  <summary><strong>Q8. Category-wise distribution of pizzas (using joins)</strong></summary>

  **Query:**
  ![Q8 Query](findings/Q8_category_wise_query.png)

  **Output:**
  ![Q8 Output](findings/Q8_category_wise_output.png)

</details>

---

<details>
  <summary><strong>Q9. Group orders by date and calculate average pizzas ordered per day</strong></summary>

  **Query:**
  ![Q9 Query](findings/Q9_avg_per_day_query.png)

  **Output:**
  ![Q9 Output](findings/Q9_avg_per_day_output.png)

</details>

---

<details>
  <summary><strong>Q10. Top 3 most ordered pizza types based on revenue</strong></summary>

  **Query:**
  ![Q10 Query](findings/Q10_top3_revenue_query.png)

  **Output:**
  ![Q10 Output](findings/Q10_top3_revenue_output.png)

</details>

---

<details>
  <summary><strong>Q11. Percentage contribution of each pizza type to total revenue</strong></summary>

  **Query:**
  ![Q11 Query](findings/Q11_percentage_contribution_query.png)

  **Output:**
  ![Q11 Output](findings/Q11_percentage_contribution_output.png)

</details>

---

<details>
  <summary><strong>Q12. Cumulative revenue generated over time (Window Function)</strong></summary>

  **Query:**
  ![Q12 Query](findings/Q12_cumulative_revenue_query.png)

  **Output:**
  ![Q12 Output](findings/Q12_cumulative_revenue_output.png)

</details>

---

<details>
  <summary><strong>Q13. Top 3 most ordered pizza types based on revenue for each category</strong></summary>

  **Query:**
  ![Q13 Query](findings/Q13_top3_category_revenue_query.png)

  **Output:**
  ![Q13 Output](findings/Q13_top3_category_revenue_output.png)

</details>

---


🚀 Future Work

Add Power BI dashboards for advanced interactive visualizations

Optimize queries for faster performance

Explore seasonal and customer-level insights

👨‍💻 Author

**Amit Kumar Singh**  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/heyamitsingh)
