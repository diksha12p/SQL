-- 1. How many albums does the artist Led Zeppelin have?

Select Count(alb.AlbumId) As Count, art.Name As Name
From Artists As art
Left Join Albums As alb
On art.ArtistId = alb.ArtistId
Where art.Name = 'Led Zeppelin';

-- Answer : 14
------------------------------------------------------------------------------

-- 2. Create a list of album titles and the unit prices for the artist "Audioslave".
-- How many records are returned?

-- Select art.Name, alb.Title, t.UnitPrice
Select Count(*) As Result
From Artists As art
Left Join Albums alb On art.ArtistId = alb.ArtistId
Left Join Tracks t On t.AlbumId = alb.AlbumId
Where art.Name = 'Audioslave';

-- Answer : 40
------------------------------------------------------------------------------

-- 3. Find the first and last name of any customer who does not have an invoice. Are there any customers returned
-- from the query?

Select c.FirstName, c.LastName
From Customers As c
Left Join Invoices As i
On c.CustomerId = i.CustomerId
Where InvoiceId IS NULL;

-- Answer : No
------------------------------------------------------------------------------

-- 4. Find the total price for each album.

Select a.Title, a.AlbumId, SUM(t.UnitPrice) as Price
From Albums a
Left Join Tracks t ON a.AlbumId = t.AlbumId
Where a.Title = 'Big Ones'
Group By a.AlbumId;

-- Answer : 14.85
------------------------------------------------------------------------------

-- 5. How many records are created when you apply a Cartesian join to the invoice and invoice items table?

Select Count(*) As Result
From Invoices i
Cross Join Invoice_items;

-- Answer : 922880
------------------------------------------------------------------------------

