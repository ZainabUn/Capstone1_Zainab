CREATE DATABASE MarketResearchCapstone1;


#to see which zipcodeshave have many bakeries and to target zipcodes with fewer bakeries
SELECT  ZIPcode,Count(ZIPcode) AS COUNT  FROM marketresearchcapstone1.bakeriesinchicagoil
GROUP BY ZIPcode ;

#zipcodes with more than 7000 people
SELECT PopulationTotal,Geography, Year FROM marketresearchcapstone1.chicago_population_counts
WHERE PopulationTotal >= 7000;

SELECT LocationSalesVolumeActual,ZIPCode FROM marketresearchcapstone1.bakerieswithsalevaluemorethan500kto1million;

#zipcode with a bakery name and the zipcode along with sales and population size
#to test if population size has to do with sales volume, any correlation
Select CompanyName,PopulationTotal,ZIPCode,LocationSalesVolumeRange,LocationSalesVolumeActual FROM marketresearchcapstone1.bakeriesinchicagoil
Join marketresearchcapstone1.chicago_population_counts 
ON marketresearchcapstone1.chicago_population_counts.Geography= marketresearchcapstone1.bakeriesinchicagoil.ZIPCode
WHERE Year = 2021  
AND  PopulationTotal >0  #to take out values that do not have PopulationTotal since it does not make sense that a zipcode does not have people
ORDER BY PopulationTotal;

