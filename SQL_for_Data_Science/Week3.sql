-- 1. Using a subquery, find the names of all the tracks for the album "Californication".
-- What is the title of the 8th track?

select Name
from Tracks
where AlbumId in (
  select AlbumId
  from Albums
  where Title = 'Californication'
  );

-- Answer : Porcelain
------------------------------------------------------------------------------

-- 2. Find the total number of invoices for each customer along with the customer's full name, city and email.
-- After running the query described above, what is the email address of the 5th person, František Wichterlová?
-- Enter the answer below (feel free to copy and paste).


select c.FirstName, c.LastName, c.City, c.Email, count(i.InvoiceId) as Num_Invoices
from Customers c
inner join Invoices i on c.CustomerId = i.CustomerId
group by i.CustomerId;

-- Answer : frantisekw@jetbrains.com
------------------------------------------------------------------------------

-- 3. Retrieve the track name, album, artistID, and trackID for all the albums.
-- What is the song title of trackID 12 from the "For Those About to Rock We Salute You" album? Enter the answer below.

select t.Name as "Track Name", a.Title as "Album", a.ArtistId, t.TrackId
from Albums a
left join Tracks t on a.AlbumId = t.AlbumId;

-- Answer : Breaking The Rules
------------------------------------------------------------------------------

-- 4. Retrieve a list with the managers last name, and the last name of the employees who report to him or her.
-- After running the query described above, who are the reports for the manager named Mitchell (select all that apply)?

select m.LastName as Manager, e.LastName as Employee
from Employees e
inner join Employees m
on e.ReportsTo = m.EmployeeId and Manager = 'Mitchell';

-- Answer : (C) Callahan    (E) King
------------------------------------------------------------------------------

-- 5. Find the name and ID of the artists who do not have albums.
-- After running the query described above, two of the records returned have the same last name. Enter that name below.

Select art.Name, art.ArtistId
From Artists art
Left Join Albums a
On a.ArtistId = art.ArtistId
Where a.AlbumId Is Null;

-- Answer : Gilberto
------------------------------------------------------------------------------

-- 6. Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the
-- last name in descending order.
-- After running the query described above, determine what is the last name of the 6th record? Enter it below.
-- Remember to order things in descending order to be sure to get the correct answer.

Select FirstName, LastName
From Employees

Union

Select FirstName, LastName
From Customers

Order By LastName DESC;


-- Answer : Taylor
------------------------------------------------------------------------------

-- 7. See if there are any customers who have a different city listed in their billing city versus their customer city.

Select c.City As CCity, i.BillingCity As BCity
From Customers c
Inner Join Invoices i On c.CustomerId = i.CustomerId And CCity != BCity;

-- Answer : (A) No customers
------------------------------------------------------------------------------


