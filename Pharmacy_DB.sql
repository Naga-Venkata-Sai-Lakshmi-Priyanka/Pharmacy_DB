CREATE database Pharmacy_DB;
Use Pharmacy_DB;
-- Medication table
CREATE TABLE Pharmacy_DB.Medication (
    MedicationID INT,
    Name VARCHAR(100) NOT NULL,
    Brand VARCHAR(100),
    DosageForm VARCHAR(50),       
    Strength VARCHAR(50),   
    PRIMARY KEY(MedicationID)
);

INSERT INTO pharmacy_DB.Medication (MedicationID, Name, Brand, DosageForm, Strength)VALUES
(1, 'Paracetamol', 'Tylenol', 'Tablet', '500mg'),
(2, 'Amoxicillin', 'Amoxil', 'Capsule', '250mg'),
(3, 'Cetirizine', 'Zyrtec', 'Tablet', '10mg'),
(4, 'Ibuprofen', 'Advil', 'Tablet', '200mg'),
(5, 'Metformin', 'Glucophage', 'Tablet', '500 mg'),
(6, 'Telmisartan', 'Telma', "Tablet", '40 mg');

-- Inventory Table
Create Table Pharmacy_DB.Inventory(
InventoryID int ,
MedicationID int,
Quantity int Not null,
ExpiryDate Date,
BatchNumber varchar(50),
PRIMARY KEY (InventoryID),
FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID)
);
Insert into Pharmacy_DB.Inventory values(101, 1, 100, '2026-12-31', "Batch001"),
(102, 2, 50, '2025-12-31', "Batch002"),
(103, 3, 70, '2026-02-27', "Batch003"),
(104, 4, 200, '2025-09-30', "Batch004"),
(105, 5, 100, '2025-2-28', "Batch005"),
(106, 6, 40, '2026-06-11', "Batch006");
select * from Pharmacy_DB.Inventory;

-- Patients table
Create Table Pharmacy_DB.Patients(
PatientID int,
FirstName varchar(70),
LastName varchar(70),
DateOfBirth Date,
Gender varchar(10),
ContactNum int,
Address text
);
alter table Pharmacy_DB.Patients
modify column PatientID int Primary key;

 Insert into Pharmacy_DB.Patients values 
 (1001, "Priya", "Yeddanapudi", '1999-06-11', "Female", 123243544, "Hyderabad"),
 (1002, "Vasu", "Tatavarthi", '1993-03-01', "Male", 424343667, "Hyderabad"),
 (1003, "Aishwarya", "Tommandru", '1999-08-21', "Female", 231452621, "Vijayawada"),
 (1004, "John", "Doe", '1992-01-01', "Male", 234566899,"Chicago");
