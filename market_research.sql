CREATE DATABASE MarketResearchCapstone1;


###BUSINESS MODEL####
#excel file named bakeryproductsincrease

SELECT * FROM marketresearchcapstone1.interesthalal;
SELECT * FROM marketresearchcapstone1.vegatarianinterest;



####inspiration####
SELECT * FROM marketresearchcapstone1.bakerieswithsalevaluemorethan500kto1million;


######LOCATION RESEARCH#######




#POPULATION SIZE OF BAKERIES THAT MAKE MORE THAN 500,000
SELECT CompanyName,LocationSalesVolumeActual,ZIPCode,City,PopulationTotal FROM marketresearchcapstone1.bakerieswithsalevaluemorethan500kto1million
LEFT JOIN chicago_population_counts 
ON chicago_population_counts.Geography=bakerieswithsalevaluemorethan500kto1million.ZIPCode
GROUP BY ZIPCode,City,LocationSalesVolumeActual,PopulationTotal,CompanyName
ORDER BY ZIPCode;


#zipcode with a bakery name and the zipcode along with sales and population size
#to test if population size has to do with sales volume, any correlation
Select CompanyName,PopulationTotal,ZIPCode,LocationSalesVolumeRange,LocationSalesVolumeActual FROM marketresearchcapstone1.bakeriesinchicagoil
Join marketresearchcapstone1.chicago_population_counts 
ON marketresearchcapstone1.chicago_population_counts.Geography= marketresearchcapstone1.bakeriesinchicagoil.ZIPCode
WHERE Year = 2021  
AND  PopulationTotal >0  #to take out values that do not have PopulationTotal since it does not make sense that a zipcode does not have people
ORDER BY PopulationTotal;

#grouping to see which location has multiple branches in Chicago
Select CompanyName,PopulationTotal,ZIPCode,LocationSalesVolumeRange,LocationSalesVolumeActual FROM marketresearchcapstone1.bakeriesinchicagoil
Join marketresearchcapstone1.chicago_population_counts 
ON marketresearchcapstone1.chicago_population_counts.Geography= marketresearchcapstone1.bakeriesinchicagoil.ZIPCode
WHERE Year = 2021 
AND  PopulationTotal >0  #to take out values that do not have PopulationTotal since it does not make sense that a zipcode does not have people
ORDER BY CompanyName,PopulationTotal,ZIPCode,LocationSalesVolumeRange,LocationSalesVolumeActual;

#distinct keyword to take out bakeries with multiple branches 
Select DISTINCT(CompanyName),ZIPCode,LocationSalesVolumeRange,LocationSalesVolumeActual FROM marketresearchcapstone1.bakeriesinchicagoil;

#to see which zipcodeshave have many bakeries and to target zipcodes with fewer bakeries
SELECT  ZIPcode,Count(ZIPcode) AS COUNT  FROM marketresearchcapstone1.bakeriesinchicagoil
GROUP BY ZIPcode ;

#zipcodes with more than 7000 people
SELECT PopulationTotal,Geography, Year FROM marketresearchcapstone1.chicago_population_counts
WHERE PopulationTotal >= 10000;