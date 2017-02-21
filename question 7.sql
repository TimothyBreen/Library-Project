SELECT Title, AuthorName, No_Of_Copies, BranchName
FROM tblBOOK INNER JOIN tblBOOK_AUTHORS
ON tblBOOK.BookID = tblBOOK_AUTHORS.BookID
INNER JOIN tblBOOK_COPIES
ON tblBOOK_AUTHORS.BookID =tblBOOK_COPIES.BookID
FULL OUTER JOIN tblLIBRARY_BRANCH
ON tblBOOK_COPIES.BranchID = tblLIBRARY_BRANCH.BranchID
WHERE BranchName = 'Central' AND AuthorName = 'Stephen King'
