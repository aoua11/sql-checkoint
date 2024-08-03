-- Table: Hotel
CREATE TABLE Hotel (
    Hotel_ID INT PRIMARY KEY,
    Hotel_Name VARCHAR(255) NOT NULL,
    Category VARCHAR(50),
    Address VARCHAR(255),
    Contact_Person VARCHAR(100)
);

-- Table: Room
CREATE TABLE Room (
    Room_Number INT PRIMARY KEY,
    Hotel_ID INT,
    Type VARCHAR(50),
    Price DECIMAL(10, 2),
    Capacity INT,
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID)
);

-- Table: Guest
CREATE TABLE Guest (
    Guest_ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

-- Table: Reservation
CREATE TABLE Reservation (
    Reservation_ID INT PRIMARY KEY,
    Guest_ID INT,
    Room_Number INT,
    Check_in_Date DATE,
    Check_out_Date DATE,
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Room_Number) REFERENCES Room(Room_Number)
);
