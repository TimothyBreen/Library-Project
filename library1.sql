USE master
CREATE DATABASE dbLibrary1
GO
DROP DATABASE dbLibrary1
GO
CREATE DATABASE dbLibrary1
GO
USE dbLibrary1
GO
CREATE TABLE tblBOOK
(
BookID int PRIMARY KEY NOT NULL,
Title VARCHAR (60) NOT NULL,
PublisherName VARCHAR (60) NOT NULL
)
GO
CREATE TABLE tblBOOK_AUTHORS
(
BookID int NOT NULL,
AuthorName VARCHAR (60)
)
GO
CREATE TABLE tblPUBLISHER
(
Name VARCHAR (60) PRIMARY KEY NOT NULL,
[Address] VARCHAR (60) NOT NULL,
Phone VARCHAR (60) NOT NULL
)
GO
CREATE TABLE tblBOOK_COPIES
(
BookID int NOT NULL,
BranchID int NOT NULL,
No_Of_Copies int NOT NULL
)
GO
CREATE TABLE tblBOOK_LOANS
(
BookID int NOT NULL,
BranchID int NOT NULL,
CardNo int NOT NULL,
DateOut VARCHAR (60) NOT NULL,
DueDate VARCHAR (60) NOT NULL
)
GO
CREATE TABLE tblLIBRARY_BRANCH
(
BranchID int PRIMARY KEY NOT NULL,
BranchName VARCHAR (60) NOT NULL,
[Address] VARCHAR (60) NOT NULL
)
GO
CREATE TABLE tblBORROWER
(
CardNo int PRIMARY KEY NOT NULL,
Name VARCHAR (60) NOT NULL,
[Address] VARCHAR (60) NOT NULL,
Phone VARCHAR (60) NOT NULL
)
GO

INSERT INTO tblBOOK
VALUES (1,'Tommyknockers','Putnam Books'),
(2,'The Idiot','Fawcett Publications'),
(3,'Homage To Catalonia','Penguin Books'),
(4,'The Lost Tribe','Picador USA'),
(5,'My War Gone By, I miss It So','Penguin Books'),
(6,'The Imperial Cruise','Back Bay Books'),
(7,'Ulysses','Wordsworth Editions'),
(8,'Generation Kill','Berkley Caliber'),
(9,'Down And Out In The Magic Kingdom','Tor Books'),
(10,'City Of Thieves','Penguin Books'),
(11,'King Rat','Little, Brown & Co.'),
(12,'Last Gang In Town','Henry Holt & Co.'),
(13,'Books Of Albion','Orion Books'),
(14,'The Company','Penguin Books'),
(15,'Basketball Diaries','Penguin Books'),
(16,'The Catcher In The Rye','Little, Brown & Co.'),
(17,'For Whom The Bell Tolls','Scribner Books'),
(18,'Haunted','Anchor Books'),
(19,'Ham On Rye','Ecco Books'),
(20,'The Given Day','William Morrow')
GO

INSERT INTO tblBOOK_AUTHORS
VALUES (1,'Stephen King'),
(2,'Fyodor Dostoyevsky'),
(3,'George Orwell'),
(4,'Mark Lee'),
(5,'Anthony Loyd'),
(6,'James Bradley'),
(7,'James Joyce'),
(8,'Evan Wright'),
(9,'Cory Doctorow'),
(10,'David Benioff'),
(11,'James Clavell'),
(12,'Marcus Gray'),
(13,'Peter Doherty'),
(14,'Robert Littel'),
(15,'Jim Carroll'),
(16,'J.D. Salinger'),
(17,'Ernest Hemingway'),
(18,'Chuck Palahniuk'),
(19,'Charles Bukowski'),
(20,'Dennis Lehane')
GO

INSERT INTO tblPUBLISHER
VALUES ('Anchor Books','328 West Grand St., New York, NY','555-670-8944'),
('Back Bay Books','4126 Piedmont St., Pittsburgh, PA','561-238-1786'),
('Berkley Caliber','389 Capital Way, St. Paul, MN','782-590-1312'),
('Ecco Books','2087 Jackson Ave., New York, NY','561-387-2685'),
('Fawcett Publications','643 Market St., San Francisco, CA','555-145-2344'),
('Henry Holt & Co.','1388 42nd St., Tucson, AZ','520-796-1340'),
('Little, Brown & Co.','706 Broadway St., Oakland, CA','510-745-3826'),
('Orion Books','1947 Washington Blvd., Hoboken, NJ','568-297-4960'),
('Penguin Books','219 Madison Ave., New York, NY','555-770-1192'),
('Picador USA','924 Gilman St., Berkeley, CA','510-638-2734'),
('Putnam Books','1027 Douglas Blvd., Las Vegas, NV','817-702-5887'),
('Scribner Books','348 Arlington Pkwy., Miami, FL','348-976-8994'),
('Tor Books','4867 NW Raleigh St., Portland, OR','503-336-2874'),
('William Morrow','785 Oxford Way, Benicia, CA','707-745-3921'),
('Wordsworth Editions','1886 Joyce Ave., Dublin, CA','510-117-8672')
GO

INSERT INTO tblBOOK_COPIES
VALUES (1,1,6),
(2,1,4),
(4,1,5),
(5,1,4),
(8,1,6),
(10,1,8),
(13,1,3),
(14,1,4),
(15,1,4),
(18,1,2),
(19,1,2),
(1,2,4),
(2,2,4),
(3,2,3),
(4,2,5),
(5,2,4),
(6,2,6),
(7,2,4),
(8,2,6),
(9,2,5),
(10,2,3),
(11,2,3),
(12,2,4),
(13,2,5),
(14,2,4),
(17,2,4),
(20,2,2),
(1,3,6),
(2,3,6),
(3,3,4),
(4,3,4),
(5,3,5),
(6,3,4),
(7,3,5),
(8,3,6),
(9,3,4),
(10,3,5),
(11,3,6),
(12,3,2),
(13,3,2),
(14,3,6),
(15,3,4),
(16,3,8),
(17,3,6),
(18,3,2),
(20,3,2),
(1,4,7),
(2,4,5),
(3,4,3),
(5,4,2),
(7,4,6),
(8,4,4),
(10,4,5),
(11,4,6),
(13,4,5),
(14,4,4),
(16,4,4),
(17,4,3),
(1,5,5),
(2,5,6),
(4,5,6),
(5,5,3),
(6,5,3),
(9,5,4),
(10,5,5),
(11,5,6),
(12,5,2),
(13,5,4),
(14,5,5),
(15,5,4),
(16,5,4)
GO

INSERT INTO tblBOOK_LOANS
VALUES (1,2,1769,'8/10/16','8/17/16'),
(3,2,1769,'8/10/16','8/17/16'),
(6,2,1769,'8/10/16','8/17/16'),
(7,2,1769,'8/10/16','8/17/16'),
(11,2,1769,'8/10/16','8/17/16'),
(13,2,1769,'8/11/16','8/18/16'),
(2,4,4832,'8/11/16','8/18/16'),
(7,4,4832,'8/11/16','8/18/16'),
(10,4,4832,'8/11/16','8/18/16'),
(12,4,4832,'8/13/16','8/20/16'),
(13,4,4832,'8/13/16','8/20/16'),
(2,3,5568,'8/9/16','8/16/16'),
(13,3,5568,'8/9/16','8/16/16'),
(14,3,5568,'8/9/16','8/16/16'),
(15,3,5568,'8/10/16','8/17/16'),
(18,3,5568,'8/10/16','8/17/16'),
(2,2,9731,'8/10/16','8/17/16'),
(4,2,9731,'8/10/16','8/17/16'),
(8,2,9731,'8/10/16','8/17/16'),
(9,2,9731,'8/10/16','8/17/16'),
(12,2,9731,'8/11/16','8/18/16'),
(13,2,9731,'8/11/16','8/18/16'),
(14,2,9731,'8/11/16','8/18/16'),
(5,4,2461,'8/10/16','8/17/16'),
(7,4,2461,'8/10/16','8/17/16'),
(13,4,2461,'8/11/16','8/18/16'),
(16,4,2461,'8/11/16','8/18/16'),
(17,4,2461,'8/11/16','8/18/16'),
(1,4,1315,'8/10/16','8/17/16'),
(3,4,1315,'8/10/16','8/17/16'),
(13,4,1315,'8/10/16','8/17/16'),
(14,4,1315,'8/10/16','8/17/16'),
(1,5,2788,'8/10/16','8/17/16'),
(5,5,2788,'8/10/16','8/17/16'),
(9,5,2788,'8/11/16','8/18/16'),
(12,5,2788,'8/11/16','8/18/16'),
(16,5,2788,'8/11/16','8/18/16'),
(17,2,4559,'8/10/16','8/17/16'),
(20,2,4559,'8/10/16','8/17/16'),
(4,5,4559,'8/11/16','8/18/16'),
(11,5,4559,'8/11/16','8/18/16'),
(13,5,4559,'8/11/16','8/18/16'),
(14,5,4559,'8/11/16','8/18/16'),
(1,1,6387,'8/10/16','8/17/16'),
(5,1,6387,'8/10/16','8/17/16'),
(10,1,6387,'8/10/16','8/17/16'),
(14,1,6387,'8/10/16','8/17/16'),
(6,1,3219,'8/11/16','8/18/16'),
(9,1,3219,'8/11/16','8/18/16'),
(16,1,3219,'8/11/16','8/18/16')
GO

INSERT INTO tblLIBRARY_BRANCH
VALUES (1,'Sharpstown','1694 Broadway St., Vallejo, CA'),
(2,'Central','1312 14th St., Oakland, CA'),
(3,'Parkhead','249 Harrison St., San Francisco, CA'),
(4,'Anfield','3011 Mission Blvd., San Jose, CA'),
(5,'Camden','427 N Main St., Walnut Creek, CA')
GO

INSERT INTO tblBORROWER
VALUES (1769,'Robert Paulson','1818 Rock Creek Cir., Moraga, CA','925-754-3372'),
(4832,'Christine Walken','361 NW Marshall St., Campbell, CA','699-282-4682'),
(5568,'Kaiser Soze','2819 Washington Blvd., San Francisco, CA','415-254-6619'),
(9731,'William Foster','445 Jackson Ave., Oakland, CA','510-947-3359'),
(2461,'Tommy DeVito','1316 Elm St., San Jose, CA','408-648-5393'),
(1315,'Henry Jones Jr.','1785 Shadetree Ln., Fremont, CA','510-477-2290'),
(2788,'Travis Bickle','246 Oak Ave., Concord, CA','925-378-0248'),
(4559,'Sharon Books','3896 Milvia St., Berkeley, CA','510-439-3054'),
(6387,'Earl Stephens','1716 Magazine St., Vallejo, CA','707-244-4263'),
(3219,'Amanda Kiehl','586 Hastings Dr., Benicia, CA','707-746-6833')
GO

ALTER TABLE tblBOOK
ADD FOREIGN KEY (PublisherName)
REFERENCES tblPUBLISHER(Name)
GO

ALTER TABLE tblBOOK_AUTHORS
ADD FOREIGN KEY (BookID)
REFERENCES tblBOOK(BookID)
GO

ALTER TABLE tblBOOK_COPIES
ADD FOREIGN KEY (BookID)
REFERENCES tblBOOK(BookID)
GO
ALTER TABLE tblBOOK_COPIES
ADD FOREIGN KEY (BranchID)
REFERENCES tblLIBRARY_BRANCH(BranchID)
GO

ALTER TABLE tblBOOK_LOANS
ADD FOREIGN KEY (BookID)
REFERENCES tblBOOK(BookID)
GO
ALTER TABLE tblBOOK_LOANS
ADD FOREIGN KEY (BranchID)
REFERENCES tblLIBRARY_BRANCH(BranchID)
GO
ALTER TABLE tblBOOK_LOANS
ADD FOREIGN KEY (CardNo)
REFERENCES tblBORROWER(CardNo)
GO



