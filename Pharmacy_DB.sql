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
 select * from Pharmacy_DB.Patients;
-- Doctor's table
Create Table Pharmacy_DB.Doctor(
DoctorID INT,
Name varchar(50),
Department varchar(100),
contact INT,
primary key(DoctorID)
);
Alter table Pharmacy_DB.Doctor
modify column Contact Bigint;
Insert into Pharmacy_DB.Doctor values
(123, "Jai Ram", "Cardiology", 1234567),
(124, "Veda", "Pulmonology", 9836351788),
(125, "Vedya", "Gynecology", 8765688654),
(126, "Sam", "General Physician", 67895645);

select * from Pharmacy_DB.Doctor;

-- Prescription table
create table Pharmacy_DB.Prescription(
PrescriptionID INT primary key,
PatientID Int,
DoctorID int,
PrescribedDate Date,
Notes text,
Foreign key (PatientID) references Patients(PatientID),
Foreign Key (DoctorID) references Doctor(DoctorID)
);
Insert into Pharmacy_DB.Prescription values 
(201, 1001, 123, '2025-04-12', "allergic rhinitia"),
(202,1002, 124, '2025-05-05', "Mild fever"),
(203,1003,125,'2025-05-05', "breathing issue");

select * from Pharmacy_DB.Prescription;

-- prescriprtion details table
CREATE TABLE PrescriptionDetails (
    PrescriptionDetailID INT PRIMARY KEY,
    PrescriptionID INT,
    MedicationID INT,
    QuantityPrescribed INT,
    DosageInstructions TEXT,
    FOREIGN KEY (PrescriptionID) REFERENCES Prescription(PrescriptionID),
    FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID)
);

insert into Pharmacy_DB.PrescriptionDetails values 
(501, 201, 1, 10, "Take one tablet every 6 houurs after meal"),
(502, 202, 2, 5, "Take one tablet a day after meal"),
(503, 203, 3, 10, "Take two tablets a day after meal");

select * from Pharmacy_DB.PrescriptionDetails;