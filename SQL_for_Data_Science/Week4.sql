--Pull a list of customer ids with the customer’s full name, and address, along with combining their city and
--ountry together. Be sure to make a space in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA)
--
--What is the city and country result for CustomerID 16?

select CustomerId, (FirstName || ' ' || LastName) as "Full Name", Address, (upper(City) || ' ' || upper(Country)) as "City & Country"
from Customers
where CustomerId = 16;

-- Answer: MOUNTAIN VIEW USA
------------------------------------------------------------------------------

--Create a new employee user id by combining the first 4 letters of the employee’s first name with the first
--2 letters of the employee’s last name. Make the new field lower case and pull each individual step to show your work.
--What is the final result for Robert King?

select lower(substr(FirstName, 1, 4)) || lower(substr(LastName,1, 2)) as UserId
from Employees;

-- Answer : robeki

------------------------------------------------------------------------------

--Show a list of employees who have worked for the company for 15 or more years using the current date function.
--Sort by lastname ascending.
--What is the lastname of the last person on the list returned?

select LastName
from Employees
where date(('now') - HireDate) > 15
Order By LastName;

-- Answer : Peacock

------------------------------------------------------------------------------

-- Profiling the Customers table, answer the following question.

select count(*)
from Customers
where [enter column name here] IS NULL

-- Answers: Postal Code, Company, Fax, Phone

------------------------------------------------------------------------------

--Find the cities with the most customers and rank in descending order.
--Which of the following cities indicate having 2 customers?

select City,
       count(*)
from Customers
group by City
order by count(*) desc;

-- Answers: London, Mountain View, Sao Paulo
------------------------------------------------------------------------------

-- Create a new customer invoice id by combining a customer’s invoice id with their first and last name while
-- ordering your query in the following order: firstname, lastname, and invoiceID.
--Select all of the correct "AstridGruber" entries that are returned in your results below. Select all that apply

Select (c.FirstName || c.LastName || i.InvoiceId) As NewId
From Customers c
Left Join Invoices i On c.CustomerId = i.CustomerId
Where NewId Like 'AstridGruber%';
------------------------------------------------------------------------------
