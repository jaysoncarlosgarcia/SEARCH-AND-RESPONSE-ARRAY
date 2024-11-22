create table users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255),
	gender VARCHAR(255),
	address VARCHAR(255),
	birthday DATE,
    degree VARCHAR(255),
	experience VARCHAR(255),
	position VARCHAR(255),
	date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (first_name, last_name, email, gender, address, birthday, degree, experience, position)
VALUES 
('John', 'Doe', 'johndoe@gmail.com', 'Male', '123 Maple St, Oakwood', '1990-03-15', 'B.Sc. Computer Science', '5 years', 'Software Engineer'),
('Emma', 'Johnson', 'emmajohnson@gmail.com', 'Female', '456 Elm St, Riverton', '1985-07-20', 'MBA', '8 years', 'Product Manager'),
('Oliver', 'Williams', 'oliverwilliams@gmail.com', 'Male', '789 Oak St, Westfield', '1992-11-10', 'B.Sc. Information Technology', '3 years', 'IT Support Specialist'),
('Ava', 'Brown', 'avabrown@gmail.com', 'Female', '101 Pine St, Maple Valley', '1995-05-25', 'M.Sc. Data Science', '4 years', 'Data Analyst'),
('Liam', 'Davis', 'liamdavis@gmail.com', 'Male', '202 Birch St, Green Meadows', '1988-02-14', 'BBA', '6 years', 'Marketing Manager'),
('Sophia', 'Miller', 'sophiamiller@gmail.com', 'Female', '303 Cedar St, Oak Ridge', '1993-09-05', 'B.Sc. Finance', '3 years', 'Financial Analyst'),
('Benjamin', 'Taylor', 'benjamintaylor@gmail.com', 'Male', '404 Cherry St, Lakeview', '1990-12-30', 'PhD Physics', '7 years', 'Research Scientist'),
('Isabella', 'Anderson', 'isabellaanderson@gmail.com', 'Female', '505 Walnut St, Silver Springs', '1987-04-18', 'M.Sc. Biology', '9 years', 'Lab Technician'),
('James', 'Thomas', 'jamesthomas@gmail.com', 'Male', '606 Ash St, Hilltop', '1994-06-12', 'B.Sc. Chemistry', '4 years', 'Chemical Engineer'),
('Mia', 'Jackson', 'miajackson@gmail.com', 'Female', '707 Chestnut St, Pine Hills', '1991-01-01', 'MBA', '6 years', 'Business Analyst'),
('Lucas', 'White', 'lucaswhite@gmail.com', 'Male', '808 Poplar St, Seaside', '1989-08-08', 'B.Sc. Mathematics', '5 years', 'Statistician'),
('Chloe', 'Harris', 'chloeharris@gmail.com', 'Female', '909 Cypress St, Brookstone', '1996-03-21', 'B.Sc. Psychology', '2 years', 'Counselor'),
('Henry', 'Clark', 'henryclark@gmail.com', 'Male', '1110 Magnolia St, Ridgeway', '1986-11-16', 'MBA', '10 years', 'CEO'),
('Zoe', 'Lewis', 'zoelewis@gmail.com', 'Female', '1211 Willow St, Goldenfield', '1990-02-28', 'B.Sc. Information Technology', '5 years', 'IT Support Specialist'),
('Daniel', 'Young', 'danielyoung@gmail.com', 'Male', '1312 Alder St, Oak Creek', '1993-10-10', 'M.Sc. Engineering', '3 years', 'Mechanical Engineer'),
('Grace', 'Allen', 'graceallen@gmail.com', 'Female', '1413 Fir St, Sunridge', '1992-04-04', 'B.Sc. Civil Engineering', '4 years', 'Civil Engineer'),
('William', 'Scott', 'williamscott@gmail.com', 'Male', '1514 Maple St, Clearwater', '1987-09-09', 'PhD Computer Science', '8 years', 'Professor'),
('Emily', 'King', 'emilyking@gmail.com', 'Female', '1615 Birch St, Highland Park', '1995-12-12', 'M.Sc. Computer Science', '2 years', 'AI Specialist'),
('Ethan', 'Green', 'ethangreen@gmail.com', 'Male', '1716 Oak St, Pinebrook', '1988-07-07', 'B.Sc. Information Systems', '6 years', 'System Administrator'),
('Charlotte', 'Adams', 'charlotteadams@gmail.com', 'Female', '1817 Pine St, Riverstone', '1994-01-25', 'M.Sc. Cybersecurity', '3 years', 'Cybersecurity Analyst');
