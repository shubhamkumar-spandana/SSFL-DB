drop database ssfl;
create database ssfl;
use ssfl;
 
CREATE TABLE tbl_master_key (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) Default '',
    display_order INT,
    display_options VARCHAR(50),
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0,   
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_master_value (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14),
    options_id INT ,
    options_val VARCHAR(50),
    parent_id INT,
    display_order INT,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0,    
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE tbl_office (
  sno INT AUTO_INCREMENT PRIMARY KEY,
  id INT,
  office_name VARCHAR(25) NOT NULL,
  address VARCHAR(255) NOT NULL,
  office_type varchar(15) NOT NULL,
  mobile_no VARCHAR(25) NOT NULL,
  status VARCHAR(1) DEFAULT 'a',  
  is_del boolean DEFAULT 0, 
  created_by VARCHAR(20),
  updated_by VARCHAR(20),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_designation (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    id INT,
    title VARCHAR(25) NOT NULL,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_department (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    id INT,
    title VARCHAR(25) NOT NULL,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE tbl_branch (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    id varchar(8),
    name VARCHAR(25) NOT NULL,
    address VARCHAR(100),
    cluster VARCHAR(25),
    area VARCHAR(25),
    region VARCHAR(25),
    state VARCHAR(25),
    zone VARCHAR(25),
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_employee (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    id VARCHAR(15) UNIQUE,
    name VARCHAR(30) NOT NULL, 
    gender CHAR(10) NOT NULL,
    age INT CHECK (age >= 0),
    branch INT,
    department INT,
    mobile_no INT,
    email VARCHAR(255),
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0,   
    password VARCHAR(255) NOT NULL,
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_complaint (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    id INT UNIQUE NOT NULL,
    emp_id VARCHAR(15),
    case_type VARCHAR(30),
    case_nature VARCHAR(50),
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0,  
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_allegations (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    complaint_id INT,
    allegations text,
    dt_of_ident DATE,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0,   
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_financial (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    complaint_id INT,
    misapp_val DOUBLE,
    amt_recovered DOUBLE,
    amt_due DOUBLE,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_cases (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    complaint_id INT,
    id INT NOT NULL,
    attendance VARCHAR(1) DEFAULT 'P',
    sbmsn_of_al_emp TEXT,
    sbmsn_of_witness TEXT,
    do_scn_issue DATETIME,
    scn_Reply_Rec_dt DATETIME,
    dt_sus_issued DATETIME,
    dt_noe_Issued DATETIME,
    dt_dac DATETIME,
    dac_rec INT,
    dac_verdict INT,
    dt_impl_of_vrdct DATETIME,
    hr_remarks TEXT,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_clv (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    case_id INT,
    emp_id VARCHAR(15),
    complaint_type VARCHAR(50),
    all_complaints TEXT,
    fraud_inves_status VARCHAR(15),
    clv_start_date DATETIME,
    clv_end_date DATETIME,
    borrowers_vrfd INT,
    fraud_amt DOUBLE,
    amt_recovered DOUBLE,
    amt_due DOUBLE,
    borrowers_affected INT,
    clv_sbmsn DATETIME,
    ia_obsv TEXT,
    rec_of_suspension VARCHAR(255),
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_ficm (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    case_id INT,
    ficm_status VARCHAR(25),
    fmr_filled DATETIME,
    recovery_amt DOUBLE,
    recovery_date DATETIME,
    deposit_date DATETIME,
    fir_status VARCHAR(25),
    amt_as_per_fir DOUBLE,
    case_status VARCHAR(25),
    remarks TEXT,
    amt_recovered DOUBLE,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_fa (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    case_id INT,
    date_of_posting DATE,
    amount_posted DOUBLE,
    recovery_amount DOUBLE,
    amt_diff DOUBLE,
    fa_remarks TEXT,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_team (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    id INT,
    emp_id VARCHAR(15),
    observations TEXT,
    conclusion TEXT,
    decision INT,
    head boolean DEFAULT 0,
    status VARCHAR(1) DEFAULT 'a',  
    is_deleted boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
CREATE TABLE tbl_committee (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    reference_id VARCHAR(14) DEFAULT '',
    case_id INT,
    team_id INT,
    observations TEXT,
    conclusion TEXT,
    decision INT,
    status VARCHAR(1) DEFAULT 'a',  
    is_del boolean DEFAULT 0, 
    created_by VARCHAR(20),
    updated_by VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
DELIMITER //
 
CREATE TRIGGER before_insert_tbl_master_key
BEFORE INSERT ON tbl_master_key
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_master_value
BEFORE INSERT ON tbl_master_value
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_complaint
BEFORE INSERT ON tbl_complaint
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_allegations
BEFORE INSERT ON tbl_allegations
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_financial
BEFORE INSERT ON tbl_financial
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_case
BEFORE INSERT ON tbl_cases
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_clv
BEFORE INSERT ON tbl_clv
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_ficm
BEFORE INSERT ON tbl_ficm
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_fa
BEFORE INSERT ON tbl_fa
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
CREATE TRIGGER before_insert_tbl_committee
BEFORE INSERT ON tbl_committee
FOR EACH ROW
BEGIN
    SET NEW.reference_id = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');
END; //
 
 
DELIMITER ;
 
CREATE INDEX idx_id ON tbl_employee (id);
CREATE INDEX idx_id ON tbl_complaint (id);
CREATE INDEX idx_emp_id ON tbl_complaint (emp_id);
CREATE INDEX idx_complaint_id ON tbl_allegations (complaint_id);
CREATE INDEX idx_complaint_id ON tbl_financial (complaint_id);
CREATE INDEX idx_id ON tbl_cases (id);
CREATE INDEX idx_case_id ON tbl_clv (case_id);
CREATE INDEX idx_emp_id ON tbl_clv (emp_id);
CREATE INDEX idx_case_id ON tbl_ficm (case_id);
CREATE INDEX idx_display_options ON tbl_master_key (display_options);
CREATE INDEX idx_display_order ON tbl_master_key (display_order);
CREATE INDEX idx_parent_id ON tbl_master_value (parent_id);
CREATE INDEX idx_id ON tbl_department (id);
CREATE INDEX idx_id ON tbl_designation (id);
CREATE INDEX idx_id ON tbl_team (id);
CREATE INDEX idx_case_id ON tbl_committee (case_id);
CREATE INDEX idx_team_id ON tbl_committee (team_id);