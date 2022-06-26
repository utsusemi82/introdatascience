---
title       : Flight Price Tracker
subtitle    : WIE2003 Introduction to Data Science
author      : Sim Jia Hong (U2005316), Pua Zhi Xian (U2005293), Cher Jia Wen (U2005415), Tan Jia Chyi (17205011)
output:
  xaringan::moon_reader:
    css: xaringan-themer.css
    lib_dir: libs
    nature:
      highlightStyle: github
      highlightLines: true
      countIncrementalSlides: false
job         : 
framework   : io2012      # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     :        
widgets     : [mathjax, quiz, bootstrap]  # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---



## Introduction

### This shiny app is implemented to track the price of flight.

### Problem Statements

- How do consumers evaluate the prices of domestic flights offered by multiple airlines in India to get the most affordable option?

### Solution

- Flight Price Tracker is created to allow consumers to check and compare the domestic flight prices from multiple airlines in India so that they can select the cheapest flight price.

### GitHub link to the Shiny App

- [Flight Price Tracker](https://github.com/jiahongggg/WIE2003-Data-Science.git)

---

## Stakeholder and Functions of Apps

### Stakeholder

- Malaysian who would travel domestically in India. 

### Functions

- Able to set range of price to filter the data of flight.
- Able to sort the data of flight based on conditions.
- Provide prices of flight from multiple airlines which allow consumers to do flight price comparison easily.
- Provide flight details (i.e. time departure, duration and etc)
- Only focus on the domestic flights in India which is more user-friendly for those who want to travel domestically in India.

### Summary of Experience using the App

- When we were developing the flight price tracker, we faced some challenges in scraping real time data from the website. Therefore, we decided to use online flight price dataset from Kaggle. In short, we gained knowledge in developing shiny apps and doing a presentation slides using Slidify. It is very useful to use R studio to develop shiny apps and presentation slides.

---

## Data Science Process

### 1. Asking a Question
- Identify the current issues faced by people when searching for flight ticket

### 2. Finding & Getting Data from Kaggle
- [Flight Price Tracker Dataset](https://www.kaggle.com/datasets/shubhambathwal/flight-price-prediction)
- It contains information about flight booking options from "Easemytrip" website to travel between India's top 6 metro cities. 
- The features of dataset include airline, flight code, source city, departure and arrival time, number of stops, destination city, class, duration and price. 

### 3. Cleaning Data
- To fix incomplete and duplicated data

### 4. Analyzing Data
- To analyse the data using EDA

### 5. Presenting Data
- Data is used to complete the flight tracker application in the form of shiny apps

---

## Screenshot of Flight Price Tracker


---

## Key takeaways

- We learned a lot of useful knowledge after completing the flight price tracker application. First of all, finding relevant dataset online to analyze and use it for the price tracker. However, not all the datasets online are suitable, hence we tried many datasets and are able to find the most suitable dataset. Secondly, we learned how to carry out the relevant EDA for data visualization. The purpose of us doing EDA is to provide a clear vision on what is the data all about. Lastly, the most challenging part is to develop the application, we refer to many resources online and watch videos so that we are able to develop our own flight price tracker application. Last but not least, we would like to sincerely thanks Dr Salimah for guiding us throughout the whole process by answering our questions patiently.
