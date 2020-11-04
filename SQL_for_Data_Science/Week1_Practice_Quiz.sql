-- 1. Run query: Retrieve all the data from the tracks table. Who is the composer for track 18?

select Composer
from Tracks
where TrackID = 18;

-- Answer : AC/DC
------------------------------------------------------------------------------

-- 2. Retrieve all data from the artists table. Look at the list of artists,
-- how many artists are you familiar with (there is no wrong answer here)?

select *
from Artists;

-- My Answer : 1
------------------------------------------------------------------------------

-- 3. Run Query: Retrieve all data from the invoices table. What is the billing address for customer 31?
select distinct BillingAddress
from Invoices
where CustomerId = 31;

-- Answer : 194A Chain Lake Drive
------------------------------------------------------------------------------

-- 4. Run Query: Return the playlist id, and name from the playlists table. How many playlists are there?
-- Which would you classify is your favorite from this list?

select Playlistid,
Name
from Playlists;

-- Answer : 18
------------------------------------------------------------------------------

-- 5. Return the Customer Id, Invoice Date, and Billing City from the Invoices table. What city is associated with
-- Customer ID number 42? What was the invoice date for the customer in Santiago?

select distinct BillingCity
from Invoices
where CustomerId = 42;

-- Answer : Bordeaux
------------------------------------------------------------------------------


-- 6. Run Query: Return the First Name, Last Name, Email, and Phone, from the Customers table.
-- What is the telephone number for Jennifer Peterson?

select Phone
from Customers
where FirstName = 'Jennifer' and LastName = 'Peterson';

-- Answer : +1 (604) 688-225
------------------------------------------------------------------------------


-- 7. Run Query: Return the Track Id, Genre Id, Composer, Unit Price from the Tracks table.
-- How much do these tracks cost?

select TrackId,
GenreId,
Composer,
UnitPrice
from Tracks;

-- Answer : 0.99
------------------------------------------------------------------------------

-- 8. Run Query: Select all the columns from the Playlist Track table and limit the results to 10 records.
-- How might this information be used?

select *
from Playlist_track
Limit 10;

-- Answer : List of the first 10 tracks in the Playlist Track table
------------------------------------------------------------------------------

-- 9. Run Query: Select all the columns from the Media Types table and limit the results to 50 records.
-- What happened when you ran this query? Were you able to get all 50 records?

select *
from Media_types
Limit 50;

-- Answer: No, limited to to 25 lines because of server storage capacity.
------------------------------------------------------------------------------

-- 10. Run Query: Select all the columns from the Albums table and limit the results to 5 records.
-- How many columns are in the albums table?
--What is the name of the 9th album in this list?

Select *
From Albums
LIMIT 5;

-- Answer: 3 columns
------------------------------------------------------------------------------


