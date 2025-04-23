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

