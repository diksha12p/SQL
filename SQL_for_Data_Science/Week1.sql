--1. Retrieve all the records from the Employees table.
--What is Robert King's mailing address? Note: You will have to scroll to the right in order to see it.


SELECT Address
FROM Employees
WHERE FirstName = 'Robert' AND LastName = 'King';

-- Answer : (A) 590 Columbia Boulevard West, Lethbridge, AB, CANADA

------------------------------------------------------------------------------

-- 2. Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.
-- Which of the employees listed below has a birthdate of 3-3-1965?

SELECT FirstName
FROM Employees
WHERE Birthdate LIKE '1965-03-03%';

-- Answer : (E) Steve

------------------------------------------------------------------------------

-- 3. Retrieve all the columns from the Tracks table, but only return 20 rows.
-- What is the runtime in milliseconds for the 5th track, entitled "Princess of the Dawn"?

SELECT Milliseconds
FROM Tracks
WHERE TrackId = 5;

-- Answer : 375418

------------------------------------------------------------------------------
