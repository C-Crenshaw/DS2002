# This is the final project file. Within this file, SQL queries are completed.

# First query: Makes a new table which isolates the name of the airline, the time that the plane spends in the air, and 
# the ticket price for each observation. 
SELECT airline_info.NAME, marflights.AIR_TIME, passenger_flights.PRICE
FROM marflights, airlines, airline_info, passenger_flights
WHERE marflights.AIRLINE = airlines.IATA_CODE
AND airline_info.IATA_CODE = airlines.IATA_CODE 
AND marflights.FLIGHT_NUMBER = passenger_flights.FLIGHT_NUMBER;


# Second query: Let us see what is the average price of plane tickets for passengers in the month of March when it is 
# a the weekday (tickets bought for flights during the week). 
# The average ticket price during the week is $534.19
SELECT avg(passenger_flights.PRICE) 
FROM marflights, passenger_flights, dim_date #choose relevant tables
WHERE marflights.flight_date_key = dim_date.date_key # make sure to get all dimensional dates that link with our 
# march flights. 
AND dim_date.weekday_weekend = 'Weekday' # Now select only for march flights where dimensional table says
# is during the weekday. 
AND marflights.FLIGHT_NUMBER = passenger_flights.FLIGHT_NUMBER;


#Third query: Let us see what is the average price of plane tickets for customers in March during the weekend. 
#The average weekend price of plane tickets is $551.35 
SELECT avg(passenger_flights.PRICE) 
FROM marflights, passenger_flights, dim_date # choose relevant tables
WHERE marflights.flight_date_key = dim_date.date_key # make sure to get all dimensional dates that link with our 
# march flights. 
AND dim_date.weekday_weekend = 'Weekend' # Now select only for march flights where dimensional table says
# is during the weekend. 
AND marflights.FLIGHT_NUMBER = passenger_flights.FLIGHT_NUMBER; # get a link between march flights and flight number. 