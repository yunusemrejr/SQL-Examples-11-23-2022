DROP SCHEMA IF EXISTS YunusEmreVurgunDB;
CREATE DATABASE YunusEmreVurgunDB;
USE YunusEmreVurgunDB;

CREATE TABLE Table_Of_Planets(
    ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    P_Name varchar(255) NOT NULL,
    P_Location varchar(255) NOT NULL,
    P_Discovery_Date DATE NOT NULL,
     Current_Surface_Heat FLOAT
    
    );
    
 ALTER TABLE Table_Of_Planets MODIFY Current_Surface_Heat varchar(100);
    
    CREATE TABLE Table_Of_SpaceCraft(
        SC_ID int NOT NULL PRIMARY KEY,
        SC_Name varchar(255) NOT NULL,
        SC_Manufacturer varchar(255),
        Currently_At_Planet_ID int,
        FOREIGN KEY(Currently_At_Planet_ID) REFERENCES Table_Of_Planets(ID) ON DELETE CASCADE
       
        );
        
        INSERT INTO Table_Of_Planets(
         
    P_Name,
    P_Location,
    P_Discovery_Date,
     Current_Surface_Heat) 
     
     VALUES('Mars','RA 5h 11m 59s | Dec +24° 37 51','1610-01-01','11,14'), 
     ('PuffleLand','xx','2022-02-06','34,65'),
            ('Earth','????','0000-00-00','57,02'),
              ('asxasxas','???','0000-00-00','3,01'),
             ('asxasdef','???','0000-00-00','2,03'),
               ('rtyyythrthy','???','0000-00-00','5,03'),
                ('gvetvtrr','???','0000-00-00','6,01'),
               ('rtgrtg','???','0000-00-00','8,01'),
           ('retgertgh','???','0000-00-00','4,54');
        
         INSERT INTO Table_Of_SpaceCraft(
             
        SC_ID,
        SC_Name,
        SC_Manufacturer
             
             ) VALUES(1,'Star Wars Space Craft','Jedi Spacecraft Factory'),
             (2,'spaceship2','some factory'),
          (3,'spaceship3','some factory'),
           (4,'spaceship4','some factory'),
            (5,'spaceship5','not some factory'),
             (6,'spaceship6','not some factory'),
              (7,'spaceship7','some factory'),
               (8,'spaceship8','some factory'),
                (9,'spaceship9','some factory'),
                 (10,'spaceship10','some factory');
                 
        
    CREATE TABLE Only_The_Amazing_Craft AS
        SELECT * FROM Table_Of_SpaceCraft WHERE SC_ID > 3 AND SC_ID < 9;
        
    CREATE TABLE Even_Numbered_ID_Of_Space_Crafts_That_Are_From_Some_Factory AS
    SELECT * FROM Table_Of_SpaceCraft WHERE mod(SC_ID,2)=0 AND SC_Manufacturer = 'some factory';
    
    SELECT Even_Numbered_ID_Of_Space_Crafts_That_Are_From_Some_Factory.SC_Name, 
   Table_Of_Planets.P_Name FROM 
    Even_Numbered_ID_Of_Space_Crafts_That_Are_From_Some_Factory INNER JOIN Table_Of_Planets ON Even_Numbered_ID_Of_Space_Crafts_That_Are_From_Some_Factory.SC_ID=Table_Of_Planets.ID;
        
        
        
        
