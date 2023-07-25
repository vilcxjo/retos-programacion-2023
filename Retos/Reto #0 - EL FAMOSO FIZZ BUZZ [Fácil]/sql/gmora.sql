-- Oracle SQL Live:

SELECT CASE WHEN MOD(numeros, 3) = 0 AND MOD(numeros, 5) = 0 THEN 'fizzbuzz'
			 WHEN MOD(numeros, 3) = 0 THEN 'fizz'
			 WHEN MOD(numeros, 5) = 0 THEN 'buzz'
            ELSE TO_CHAR(numeros)
		   END AS RESULT
FROM (SELECT LEVEL AS numeros FROM DUAL CONNECT BY LEVEL <= 100);
