SELECT Title, BranchID, No_Of_Copies
FROM tblBOOK INNER JOIN tblBOOK_COPIES
ON tblBook.BookID = tblBOOK_COPIES.BookID
WHERE Title = 'The Lost Tribe'