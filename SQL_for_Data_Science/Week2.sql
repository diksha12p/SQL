-- 1. Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.
-- How many tracks are returned?

Select TrackId
From Tracks
Where Milliseconds >= 5000000;

-- Answer : 2
------------------------------------------------------------------------------

-- 2. Run Query: Find all the invoices whose total is between $5 and $15 dollars.
-- While the query in this example is limited to 10 records, running the query correctly will indicate how many
-- total records there are - enter that number below.

Select Count(InvoiceId) AS Answer
From Invoices
Where Total Between 5 AND 15;

-- Answer : 168
------------------------------------------------------------------------------

-- 3. Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
-- What company does Jack Smith work for?

Select FirstName, LastName, Company
From Customers
Where State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY');
-- AND FirstName = 'Jack' AND LastName = 'Smith';

-- Answer : (B) Microsoft Corp
------------------------------------------------------------------------------

-- 4. Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
--  What was the invoice date for invoice ID 315?

Select InvoiceId, InvoiceDate
From Invoices
Where CustomerID IN (56, 58) AND (Total Between 1.00 AND 5.00);
-- AND InvoiceId = 315;

-- Answer : (B) 10-27-2012

------------------------------------------------------------------------------

-- 5. Run Query: Find all the tracks whose name starts with 'All'.
-- While only 10 records are shown, the query will indicate how many total records there are for this query -
-- enter that number below.

Select COUNT(TrackID)
From Tracks
Where Name Like 'All%';

-- Answer : 15
------------------------------------------------------------------------------

-- 6. Run Query: Find all the customer emails that start with "J" and are from gmail.com.
-- Enter the one email address returned (you will likely need to scroll to the right) below.

Select Email
From Customers
Where Email LIKE 'j%@gmail.com';

-- Answer : jubarnett@gmail.com

------------------------------------------------------------------------------

-- 7. Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in
-- descending order by invoice ID.
-- What is the total invoice amount of the first record returned? Enter the number below without a $ sign.
-- Remember to sort in descending order to get the correct answer.

Select InvoiceID, Total
From Invoices
Where BillingCity IN ('Brasília', 'Edmonton', 'Vancouver')
Order By InvoiceId DESC;

-- Answer : 13.86
------------------------------------------------------------------------------

-- 8. Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and
-- sort the result by the number of orders in descending order.
-- What is the number of items placed for the 8th person on this list? Enter that number below.

Select CustomerID, Count(InvoiceID) As Orders
From Invoices
Group By CustomerID
Order By Orders;

-- Answer : 7
------------------------------------------------------------------------------

-- 9. Run Query: Find the albums with 12 or more tracks.
-- While the number of records returned is limited to 10, the query, if run correctly,
-- will indicate how many total records there are. Enter that number below.

Select AlbumId, Count(*) AS Ntracks
From Tracks
Group By AlbumId
Having Ntracks >= 12;

-- Answer : 158
------------------------------------------------------------------------------



