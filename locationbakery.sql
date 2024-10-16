CREATE DATABASE MarketResearchCapstone1;


#to see which zipcodeshave have many bakeries and to target zipcodes with fewer bakeries
SELECT  ZIPcode,Count(ZIPcode) AS COUNT  FROM marketresearchcapstone1.bakeriesinchicagoil
GROUP BY ZIPcode ;

-- Select CompanyName,ZIPcode FROM marketresearchcapstone1.bakeriesinchicagoil
-- ORDER BY ZIPCODE ASC;