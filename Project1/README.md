# Final Project 1 File for DS2002

Carson Crenshaw (cgc8gdt), Natalie Assad (ttd8ev), Anish Raghav Yadlapalli (ay9fn)

The following project deliverable is designed to represent the business transactions between airline passengers and airline flights. The dimensional data mart built by this group represents the interaction between multiple stakeholders including airlines, airports, and passengers. There are 494 total observations used in this exercise. The data mart ultimately stores information on unique passengers and flights taken within the month of March 2015 (dates range from March 1 - March 31, 2015). With the successful implementation of the flights schema, the final aspect of the program is successfully running SQL SELECT queries. Both the database itself and the queries illustrate the wealth of knowledge that can be gleaned by studying transportation data such as this. One can also monitor ticket pricing and make conclusions based on the resulting data. For example, our group used the AVERAGE type of SQL aggregation code and could note that airline ticket prices were more expensive (on average) during weekend days than on days during the work week.   

The original dataset used as a foundational resource for this project was found on Kaggle and is titled "2015 Flight Delays and Cancellations" (https://www.kaggle.com/datasets/usdot/flight-delays?resource=download&select=flights.csv). All appropriate csv. files used to populate the databases have been included in the folder. 

The image below illustrates the data processor that was built. The tables incorporate data from three sources including original MYSQL data dimension tables, a MongoDB (NoSQL) database, and an API call. A date dimension table was also constructed within MYSQL and incorporated within the 'marflights' fact table. 

![DataTables](https://github.com/C-Crenshaw/DS2002/blob/db2f7c30d6e88ba0f621aa014005b39401ade8bf/Project1/DataTables.png)
