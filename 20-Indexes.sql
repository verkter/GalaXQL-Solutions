CREATE TABLE gateway (star1 INTEGER PRIMARY KEY, star2 INTEGER);

INSERT INTO gateway 
SELECT starid, RANDOM()%12500+12500 
FROM stars 
WHERE starid%100=0;

CREATE INDEX gateways_star2 
ON gateway (star2);

SELECT starid 
FROM stars, gateway 
WHERE star2=starid;

ALTER TABLE gateway 
RENAME TO gateways;

