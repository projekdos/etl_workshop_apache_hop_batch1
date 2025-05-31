# Projek Freedom Open Source - Apache Hop Metadata Injection Quiz

![Alt text](https://github.com/projekdos/etl_workshop_apache_hop_batch1/blob/main/Image/Header.jpeg)

This is a hands-on quiz of **Metadata Injection in Apache Hop**, designed for Building ETL workshop.

## Please Record the Demo on your screen & upload into your Google Drive

Submit your answers to: info@projekdos.com with your google drive video link

- Deadline: 14 June, 2025 – 23:59 WIB  
- Winner Criteria: Correct Answer, Informative, Unique
- Reward: Free Merchandise, video content will be uploaded on Youtube

---

## Objective

Create a Hop Workflow & Record in Video that:
1. Reads SQL queries from a **Table (You can use PostgreSQL)**.
2. Injects the SQL query into a **template transformation** using Metadata Injection.
3. Executes the ETL.
4. Saves the result to a **Table Output**.
5. Explain step by step from start, transformation, into result

Notes: 

1. You must RnD the Metadata Injection for Apache Hop/Pentaho Data Integration -> https://hop.apache.org/manual/latest/pipeline/metadata-injection.html
2. The Idea of ETL workflow is up to your creativity

- SQL Statement (Blank)
![Alt text](https://github.com/projekdos/etl_workshop_apache_hop_batch1/blob/main/Image/sql_statement.png)

- Metadata Injection
![Alt text](https://github.com/projekdos/etl_workshop_apache_hop_batch1/blob/main/Image/metadata_injection.png)

---

## Example Use Case

Imagine you have IT users who store custom report SQL queries in a table called `report_queries`, like:

| report_id | report_name                  | query                                                                                                                  |
|-----------|------------------------------|------------------------------------------------------------------------------------------------------------------------|
| 1         | total_customer_by_branch     | Insert into tbl_report (branch,total_customer) SELECT branch, count(1) as total_customer FROM customers group by branch|

The sql statement will be running without create new pipelines in Apache Hop. The Result will be stored in `tbl_report` as output

| branch    | total_customer               |
|-----------|------------------------------|
| Jakarta   | 10     					   |
| Bandung   | 15     					   |
| Tangerang | 5     					   |

---

## Step Used in Apache Hop

- ETL Metadata Injection (Find it on Pipeline)
- Execute SQL Script (Find it on Pipeline)

---

Good luck, and happy RnD!

## About this workshop & quiz

This hands-on workshop Prepared by Firman Fakhri Mukti & Wandhana Kurnia that participants can learn :

- ETL Fundamental & Hands On
- Integrate data from multiple sources (ex: CSV, Excel, Parquet)
- Clean & transform data with Apache Hop: Rename, lookup, case when, group by, sort, string cleansing, split multivalue (array)
- Load data into PostgreSQL, Apache Doris, & More
- Building End to End ETL Workflow


Contact:
 - Email: info@projekdos.com
 - Whatsapp: +6281385368844 (Admin)
 - Linkedin: https://www.linkedin.com/company/projek-dos/
 - Youtube: https://www.youtube.com/@wndktech