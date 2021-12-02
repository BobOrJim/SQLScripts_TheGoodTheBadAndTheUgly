
--övningar https://github.com/joshualloyd/chinook-sqlite
--Facit https://github.com/joshualloyd/chinook-sqlite/blob/master/chinook-queries.sql
--Database https://github.com/lerocha/chinook-database

--USE [Chinook]
-- 01: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
--SELECT cu.FirstName, cu.LastName, cu.CustomerId, cu.Country
--FROM Chinook.dbo.Customer cu
--WHERE Country <> 'USA'

-- 02: Provide a query only showing the Customers from Brazil.
--SELECT cu.FirstName, cu.LastName, cu.CustomerId, cu.Country
--FROM Chinook.dbo.Customer cu
--WHERE cu.Country = 'Brazil'

-- 03: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, 
--Invoice ID, Date of the invoice and billing country.

--SELECT cu.FirstName + ' ' + cu.LastName AS Fullname, i.InvoiceId, i.InvoiceDate, i.BillingCountry
--FROM Chinook.dbo.Invoice i
--JOIN Chinook.dbo.Customer cu
--ON i.CustomerId = cu.CustomerId
--WHERE i.BillingCountry = 'Brazil'

-- 04: Provide a query showing only the Employees who are Sales Agents.
--SELECT em.FirstName, em.LastName
--FROM [Chinook].[dbo].[Employee] em
--WHERE em.Title LIKE '%sales%'
--AND em.Title LIKE '%agent%';

-- 05: Provide a query showing a unique list of billing countries from the Invoice table.
--SELECT DISTINCT(i.BillingCountry)
--FROM [Chinook].[dbo].[Invoice] i;

-- 06: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
--SELECT em.FirstName +' ' +em.LastName AS Fullname, i.InvoiceId
--FROM [Chinook].[dbo].[Employee] em
--JOIN [Chinook].[dbo].[Customer] cu
--ON em.EmployeeId = cu.SupportRepId
--JOIN [Chinook].[dbo].[Invoice] i
--ON cu.CustomerId = i.CustomerId
--WHERE em.Title LIKE '%sales%'
--AND em.Title LIKE '%agent%';

-- 07: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
--SELECT em.FirstName +' ' +em.LastName AS AgentFullname, cu.FirstName+' '+cu.LastName AS CustFullName,
--	   cu.Country, i.Total
--FROM [Chinook].[dbo].[Employee] em
--JOIN [Chinook].[dbo].[Customer] cu
--ON em.EmployeeId = cu.SupportRepId
--JOIN [Chinook].[dbo].[Invoice] i
--ON cu.CustomerId = i.CustomerId

-- 08: How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
--SELECT YEAR(i.InvoiceDate) AS 'YEAR', COUNT(i.InvoiceId) AS Invoices, SUM(i.Total) AS Total, i.BillingCountry
--FROM [Chinook].[dbo].[Invoice] i
--WHERE i.InvoiceDate LIKE '%2009%' OR i.InvoiceDate LIKE '%2011%'
--GROUP BY YEAR(i.InvoiceDate), i.BillingCountry

-- 09: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
--SELECT COUNT(inv.InvoiceId)
--FROM [Chinook].[dbo].[InvoiceLine] inv
--WHERE inv.InvoiceId = 37

-- 10: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
--SELECT inv.InvoiceId, COUNT(inv.InvoiceId)
--FROM [Chinook].[dbo].[InvoiceLine] inv
--GROUP BY inv.InvoiceId

-- 11: Provide a query that includes the track name with each invoice line item.
--SELECT t.Name, COUNT(inv.InvoiceId)
--FROM [Chinook].[dbo].[InvoiceLine] inv
--JOIN [Chinook].[dbo].[Track] t
--ON inv.TrackId = t.TrackId
--GROUP BY t.Name

-- 12: Provide a query that includes the purchased track name AND artist name with each invoice line item.
--SELECT t.Name, ar.Name, invL.InvoiceLineId
--FROM [Chinook].[dbo].[InvoiceLine] invL
--JOIN [Chinook].[dbo].[Track] t
--ON invL.TrackId = t.TrackId
--JOIN [Chinook].[dbo].[Album] al
--ON t.AlbumId = al.AlbumId
--JOIN [Chinook].[dbo].[Artist] ar
--ON al.ArtistId = ar.ArtistId

-- 13: Provide a query that shows the # of invoices per country. HINT: GROUP BY
--SELECT inv.BillingCountry, COUNT(inv.InvoiceId)
--FROM [Chinook].[dbo].[Invoice] inv
--GROUP BY inv.BillingCountry

-- 14: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table.
--SELECT p.Name, COUNT(pt.TrackId)
--FROM [Chinook].[dbo].[Playlist] p
--JOIN [Chinook].[dbo].[PlaylistTrack] pt
--ON p.PlaylistId = pt.TrackId
--GROUP BY p.Name

-- 15: Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
--SELECT a.Title, m.Name, g.Name
--FROM [Chinook].[dbo].[Track] t
--JOIN [Chinook].[dbo].[Album] a
--ON t.AlbumId = a.AlbumId
--JOIN [Chinook].[dbo].[Genre] g
--ON t.GenreId = g.GenreId
--JOIN [Chinook].[dbo].[MediaType] m
--ON t.MediaTypeId = m.MediaTypeId

-- 16: Provide a query that shows all Invoices but includes the # of invoice line items.
--SELECT inv.InvoiceId, COUNT(inv.InvoiceId)
--FROM [Chinook].[dbo].[Invoice] inv
--JOIN [Chinook].[dbo].[InvoiceLine] invL
--ON inv.InvoiceId = invL.InvoiceId
--GROUP BY inv.InvoiceId

-- 17: Provide a query that shows total sales made by each sales agent.
--SELECT e.FirstName, e.LastName, SUM(i.Total)
--FROM [Chinook].[dbo].[Employee] e
--JOIN [Chinook].[dbo].[Customer] c
--ON e.EmployeeId = c.SupportRepId
--JOIN [Chinook].[dbo].[Invoice] i
--ON c.CustomerId = i.CustomerId
--GROUP BY c.SupportRepId, e.FirstName, e.LastName

-- 18: Which sales agent made the most in sales in 2009?
--SELECT e.FirstName, e.LastName, SUM(i.Total) AS Total
--FROM [Chinook].[dbo].[Employee] e
--JOIN [Chinook].[dbo].[Customer] c
--ON e.EmployeeId = c.SupportRepId
--JOIN [Chinook].[dbo].[Invoice] i
--ON c.CustomerId = i.CustomerId
--WHERE i.InvoiceDate LIKE '%2009%'
--GROUP BY c.SupportRepId, e.FirstName, e.LastName
--ORDER BY SUM(i.Total) DESC
----LIMIT 3; --Hmm, borde fungera,

-- 19/20: Which sales agent made the most in sales in 2010?
--SELECT e.FirstName, e.LastName, SUM(i.Total) AS Total
--FROM [Chinook].[dbo].[Employee] e
--JOIN [Chinook].[dbo].[Customer] c
--ON e.EmployeeId = c.SupportRepId
--JOIN [Chinook].[dbo].[Invoice] i
--ON c.CustomerId = i.CustomerId
--WHERE i.InvoiceDate LIKE '%2010%'
--GROUP BY c.SupportRepId, e.FirstName, e.LastName
--ORDER BY SUM(i.Total) DESC
----LIMIT 3; --Hmm, borde fungera,

-- 21: Provide a query that shows the # of customers assigned to each sales agent.
--SELECT e.FirstName, e.LastName, COUNT(e.EmployeeId)
--FROM [Chinook].[dbo].[Employee] e
--JOIN [Chinook].[dbo].[Customer] c
--ON e.EmployeeId = c.SupportRepId
--GROUP BY c.SupportRepId, e.FirstName, e.LastName

-- 22: Provide a query that shows the total sales per country. Which country's customers spent the most?
--SELECT i.BillingCountry, SUM(i.Total)
--FROM [Chinook].[dbo].[Invoice] i
--GROUP BY i.BillingCountry
--ORDER BY SUM(i.Total) DESC
----LIMIT 1

-- 23: Provide a query that shows the most purchased track of 2013.
--SELECT t.Name, COUNT(invL.Quantity) SontQuantity
--FROM [Chinook].[dbo].[Track] t
--JOIN [Chinook].[dbo].[InvoiceLine] invL
--ON t.TrackId = invL.TrackId
--JOIN [Chinook].[dbo].[Invoice] i
--ON invL.InvoiceId = i.InvoiceId
--WHERE i.InvoiceDate LIKE '%2013%'
--GROUP BY t.Name

-- 24: Provide a query that shows the top 5 most purchased tracks over all.
--SELECT t.Name, COUNT(invL.TrackId) TotalSales
--FROM [Chinook].[dbo].[Track] t
--JOIN [Chinook].[dbo].[InvoiceLine] invL
--ON t.TrackId = invL.TrackId
--JOIN [Chinook].[dbo].[Invoice] i
--ON invL.InvoiceId = i.InvoiceId
--GROUP BY t.Name
--ORDER BY COUNT(invL.TrackId) DESC

-- 25: Provide a query that shows the top 3 best selling artists.
--SELECT ar.Name, COUNT(ar.Name) AS SoldSongs
--FROM [Chinook].[dbo].[Artist] ar
--JOIN [Chinook].[dbo].[Album] al ON ar.ArtistId = al.ArtistId
--JOIN [Chinook].[dbo].[Track] t on al.AlbumId = t.AlbumId
--JOIN [Chinook].[dbo].[InvoiceLine] i ON t.TrackId = i.TrackId
--GROUP BY ar.Name
--ORDER BY COUNT(ar.Name) DESC

-- 26: Provide a query that shows the most purchased Media Type.
--SELECT m.Name, COUNT(m.Name) AS TotalSold
--FROM [Chinook].[dbo].[MediaType] m
--JOIN [Chinook].[dbo].[Track] t ON m.MediaTypeId = t.MediaTypeId
--JOIN [Chinook].[dbo].[InvoiceLine] i ON t.TrackId = i.TrackId
--GROUP BY m.Name
--ORDER BY COUNT(m.Name) DESC

-- 27: Provide a query that shows the number tracks purchased in all invoices that contain more than one genre.

--SELECT COUNT(t.TrackId) '# of tracks', COUNT(g.GenreId) '# of genres', i.InvoiceId
--FROM [Chinook].[dbo].[Invoice] i
--JOIN [Chinook].[dbo].[InvoiceLine] invL ON i.InvoiceId = invL.InvoiceId
--JOIN [Chinook].[dbo].[Track] t ON invl.TrackId = t.TrackId
--JOIN [Chinook].[dbo].[Genre] g ON t.GenreId = g.GenreId
--GROUP BY i.InvoiceId
--HAVING COUNT(DISTINCT g.GenreId) > 1







--from - join on - where - grouby - having - select - distinct - orderby - limit



