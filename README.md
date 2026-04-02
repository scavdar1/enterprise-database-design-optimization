# Enterprise Database Design & Optimization

## 🎯 Project Overview
This project demonstrates a scalable and optimized relational database schema for a **Multilingual Learning Management System (LMS)**. It is designed to handle thousands of users and courses while maintaining data integrity and high performance.

## 🚀 Key Technical Features
- **3rd Normal Form (3NF):** Minimized data redundancy and ensured logical consistency across 4+ related tables.
- **Localization Support:** Implemented a dedicated translation table to support **English, German, and Turkish** content seamlessly.
- **Performance Optimization:** Leveraged B-Tree indexing on frequently queried columns (email, language_code) to reduce execution latency.
- **Integrity Constraints:** Utilized Foreign Keys and Check Constraints to ensure professional-grade data reliability.

## 🛠 Tech Stack
- **Database:** PostgreSQL / MySQL
- **Tooling:** SQL DDL/DML, Entity-Relationship Modeling

## 📈 Database Schema (ER Summary)
1. **Users:** Handles authentication and role-based access.
2. **Courses:** Core course data.
3. **Course_Translations:** Separate table for multilingual support (demonstrating 3NF).
4. **Enrollments:** Junction table for many-to-many relationships.

---
*Developed as part of my Backend Engineering portfolio *
