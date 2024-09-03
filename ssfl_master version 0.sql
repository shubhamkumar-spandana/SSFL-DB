use ssfl;
INSERT INTO tbl_master_key (display_order, display_options, created_by, updated_by) VALUES
(1, 'Department', 'admin', 'admin'),
(2, 'case_type', 'admin', 'admin'),
(3, 'DAC_Recommendation', 'admin', 'admin'),
(4, 'DAC_Final_Verdict', 'admin', 'admin'),
(5, 'Type_of_complaint', 'admin', 'admin'),
(6, 'Multiple_complaints', 'admin', 'admin'),
(7, 'Fraud_Investigation_Status', 'admin', 'admin'),
(8, 'FMR_Status', 'admin', 'admin'),
(9, 'FIR_Status', 'admin', 'admin'),
(10, 'Decision', 'admin', 'admin');


INSERT INTO tbl_master_value (
    options_id, 
    options_val, 
    parent_id, 
    display_order, 
    status, 
    is_del, 
    created_by, 
    updated_by
) VALUES
(1, 'IT', 0, 1, 'a', 0, 'admin', 'admin'),
(2, 'OPERATIONS', 0, 1, 'a', 0, 'admin', 'admin'),
(3, 'AUDIT', 0, 1, 'a', 0, 'admin', 'admin'),
(4, 'HR', 0, 1, 'a', 0, 'admin', 'admin'),
(5, 'TRAINING', 0, 1, 'a', 0, 'admin', 'admin'),
(6, 'COMPLIANCE', 0, 1, 'a', 0, 'admin', 'admin'),
(7, 'BA& P', 0, 1, 'a', 0, 'admin', 'admin'),
(8, 'FINANCE', 0, 1, 'a', 0, 'admin', 'admin'),
(9, 'ADMIN', 0, 1, 'a', 0, 'admin', 'admin'),
(10, 'ACCOUNTS', 0, 1, 'a', 0, 'admin', 'admin'),
(11, 'Unauthorised Absence', 0, 2, 'a', 0, 'admin', 'admin'),
(12, 'Non-Financial', 0, 2, 'a', 0, 'admin', 'admin'),
(13, 'Financial', 0, 2, 'a', 0, 'admin', 'admin'),
(14, 'Absconding', 11, 2, 'a', 0, 'admin', 'admin'),
(15, 'Behavioral', 12, 2, 'a', 0, 'admin', 'admin'),
(16, 'Process lapse', 12, 2, 'a', 0, 'admin', 'admin'),
(17, 'policy violation', 12, 2, 'a', 0, 'admin', 'admin'),
(18, 'work negligence', 12, 2, 'a', 0, 'admin', 'admin'),
(19, 'violation of “code of conduct”', 12, 2, 'a', 0, 'admin', 'admin'),
(20, 'Collection Misappropriation', 13, 2, 'a', 0, 'admin', 'admin'),
(21, 'Shortage of Cash', 13, 2, 'a', 0, 'admin', 'admin'),
(22, 'Pre-closure Misappropriation', 13, 2, 'a', 0, 'admin', 'admin'),
(23, 'Collection and Pre-closure misappropriation', 13, 2, 'a', 0, 'admin', 'admin'),
(24, 'Fake Loan disbursement', 13, 2, 'a', 0, 'admin', 'admin'),
(25, 'Pre-closure and Fake loan disbursements', 13, 2, 'a', 0, 'admin', 'admin'),
(26, 'KYC manipulations', 13, 2, 'a', 0, 'admin', 'admin'),
(27, 'Fake bills submission', 13, 2, 'a', 0, 'admin', 'admin'),
(28, 'Commission', 13, 2, 'a', 0, 'admin', 'admin'),
(29, 'Financial Misappropriation & Absconding', 13, 2, 'a', 0, 'admin', 'admin'),
(30, 'Theft', 13, 2, 'a', 0, 'admin', 'admin'),
(31, 'Excess collection under', 13, 2, 'a', 0, 'admin', 'admin'),
(32, 'ABC', 0, 3, 'a', 0, 'admin', 'admin'),
(33, 'ABC', 0, 3, 'a', 0, 'admin', 'admin'),
(34, 'ABC', 0, 3, 'a', 0, 'admin', 'admin'),
(35, 'DEF', 0, 4, 'a', 0, 'admin', 'admin'),
(36, 'DEF', 0, 4, 'a', 0, 'admin', 'admin'),
(37, 'DEF', 0, 4, 'a', 0, 'admin', 'admin'),
(38, 'Cash Closing', 0, 5, 'a', 0, 'admin', 'admin'),
(39, 'Collection misappropriation', 0, 5, 'a', 0, 'admin', 'admin'),
(40, 'Commission', 0, 5, 'a', 0, 'admin', 'admin'),
(41, 'Pre-closure amount Misappropriation', 0, 5, 'a', 0, 'admin', 'admin'),
(42, 'Robbery', 0, 5, 'a', 0, 'admin', 'admin'),
(43, 'Others', 0, 5, 'a', 0, 'admin', 'admin'),
(44, 'GHI', 0, 6, 'a', 0, 'admin', 'admin'),
(45, 'GHI', 0, 6, 'a', 0, 'admin', 'admin'),
(46, 'GHI', 0, 6, 'a', 0, 'admin', 'admin'),
(47, 'Completed-Report Pending', 0, 7, 'a', 0, 'admin', 'admin'),
(48, 'Completed-Report Submitted', 0, 7, 'a', 0, 'admin', 'admin'),
(49, 'Not Required', 0, 7, 'a', 0, 'admin', 'admin'),
(50, 'Required', 0, 7, 'a', 0, 'admin', 'admin'),
(51, 'JKL', 0, 8, 'a', 0, 'admin', 'admin'),
(52, 'JKL', 0, 8, 'a', 0, 'admin', 'admin'),
(53, 'JKL', 0, 8, 'a', 0, 'admin', 'admin'),
(54, 'MNO', 0, 9, 'a', 0, 'admin', 'admin'),
(55, 'MNO', 0, 9, 'a', 0, 'admin', 'admin'),
(56, 'MNO', 0, 9, 'a', 0, 'admin', 'admin'),
(57, 'Termination', 0, 10, 'a', 0, 'admin', 'admin'),
(58, 'Resignation', 0, 10, 'a', 0, 'admin', 'admin'),
(59, 'Drop Charges', 0, 10, 'a', 0, 'admin', 'admin'),
(60, 'Warning letter', 0, 10, 'a', 0, 'admin', 'admin');


INSERT INTO tbl_office (id, office_name, address, office_type, mobile_no, created_by, updated_by) VALUES
(1, 'Head Office', '123 Main St, Anytown', 'Corporate', '123-456-7890', 'admin', 'admin'),
(2, 'Branch Office 1', '456 Elm St, Anytown', 'Branch', '123-456-7891', 'admin', 'admin'),
(3, 'Branch Office 2', '789 Oak St, Anytown', 'Branch', '123-456-7892', 'admin', 'admin'),
(4, 'Satellite Office', '101 Pine St, Anytown', 'Satellite', '123-456-7893', 'admin', 'admin'),
(5, 'Regional Office', '202 Maple St, Anytown', 'Regional', '123-456-7894', 'admin', 'admin');

INSERT INTO tbl_designation (id, title, created_by, updated_by) VALUES
(1, 'Manager', 'admin', 'admin'),
(2, 'Assistant Manager', 'admin', 'admin'),
(3, 'Team Lead', 'admin', 'admin'),
(4, 'Senior Developer', 'admin', 'admin'),
(5, 'Junior Developer', 'admin', 'admin');

INSERT INTO tbl_department (id, title, created_by, updated_by) VALUES
(1, 'IT', 'admin', 'admin'),
(2, 'HR', 'admin', 'admin'),
(3, 'Finance', 'admin', 'admin'),
(4, 'Marketing', 'admin', 'admin'),
(5, 'Sales', 'admin', 'admin');

INSERT INTO tbl_employee (username, id, name, gender, age, branch, department, mobile_no, email, password, created_by, updated_by) VALUES
('jdoe', 'E001', 'John Doe', 'M', 30, 1, 1, 1234567890, 'jdoe@example.com', 'password123', 'admin', 'admin'),
('asmith', 'E002', 'Alice Smith', 'F', 28, 1, 2, 1234567891, 'asmith@example.com', 'password123', 'admin', 'admin'),
('bwhite', 'E003', 'Bob White', 'M', 35, 2, 3, 1234567892, 'bwhite@example.com', 'password123', 'admin', 'admin'),
('mjackson', 'E004', 'Mary Jackson', 'F', 40, 2, 4, 1234567893, 'mjackson@example.com', 'password123', 'admin', 'admin'),
('sblake', 'E005', 'Sarah Blake', 'F', 25, 3, 5, 1234567894, 'sblake@example.com', 'password123', 'admin', 'admin');

INSERT INTO tbl_complaint (id, emp_id, case_type, case_nature, created_by, updated_by) VALUES
(1, 'E001', 'Fraud', 'Financial Misappropriation', 'admin', 'admin'),
(2, 'E002', 'Harassment', 'Behavioral Issue', 'admin', 'admin'),
(3, 'E003', 'Theft', 'Property Theft', 'admin', 'admin'),
(4, 'E004', 'Absenteeism', 'Unauthorized Absence', 'admin', 'admin'),
(5, 'E005', 'Policy Violation', 'Process Lapse', 'admin', 'admin');

INSERT INTO tbl_allegations (complaint_id, allegations, dt_of_ident, created_by, updated_by) VALUES
(1, 'Allegation of embezzlement.', '2024-09-01', 'admin', 'admin'),
(2, 'Verbal abuse reported.', '2024-09-02', 'admin', 'admin'),
(3, 'Possession of stolen goods.', '2024-09-03', 'admin', 'admin'),
(4, 'Repeated absence without notice.', '2024-09-04', 'admin', 'admin'),
(5, 'Failure to follow process.', '2024-09-05', 'admin', 'admin');

INSERT INTO tbl_financial (complaint_id, misapp_val, amt_recovered, amt_due, created_by, updated_by) VALUES
(1, 10000.00, 2000.00, 8000.00, 'admin', 'admin'),
(2, 5000.00, 1000.00, 4000.00, 'admin', 'admin'),
(3, 15000.00, 5000.00, 10000.00, 'admin', 'admin'),
(4, 2000.00, 500.00, 1500.00, 'admin', 'admin'),
(5, 3000.00, 1000.00, 2000.00, 'admin', 'admin');

INSERT INTO tbl_clv (case_id, emp_id, complaint_type, all_complaints, fraud_inves_status, clv_start_date, clv_end_date, borrowers_vrfd, fraud_amt, amt_recovered, amt_due, borrowers_affected, clv_sbmsn, ia_obsv, rec_of_suspension, created_by, updated_by) VALUES
(1, 'E001', 'Fraud', 'Detailed list of complaints.', 'Investigation', '2024-09-01 10:00:00', '2024-09-30 10:00:00', 5, 10000.00, 2000.00, 8000.00, 50, '2024-09-10 10:00:00', 'No significant observations.', 'Suspended pending investigation.', 'admin', 'admin'),
(2, 'E002', 'Harassment', 'Details of incidents provided.', 'Resolved', '2024-09-02 11:00:00', '2024-09-29 11:00:00', 3, 5000.00, 1000.00, 4000.00, 20, '2024-09-11 11:00:00', 'Minor observations noted.', 'No suspension.', 'admin', 'admin'),
(3, 'E003', 'Theft', 'Theft details documented.', 'Closed', '2024-09-03 12:00:00', '2024-09-28 12:00:00', 10, 15000.00, 5000.00, 10000.00, 75, '2024-09-12 12:00:00', 'Serious observations made.', 'Suspended for theft.', 'admin', 'admin'),
(4, 'E004', 'Absenteeism', 'Absenteeism records.', 'Ongoing', '2024-09-04 13:00:00', '2024-09-27 13:00:00', 0, 2000.00, 500.00, 1500.00, 10, '2024-09-13 13:00:00', 'No significant observations.', 'Suspended for absences.', 'admin', 'admin'),
(5, 'E005', 'Policy Violation', 'Details of violations.', 'Under Review', '2024-09-05 14:00:00', '2024-09-26 14:00:00', 8, 3000.00, 1000.00, 2000.00, 30, '2024-09-14 14:00:00', 'Observations made on policy adherence.', 'No suspension.', 'admin', 'admin');

INSERT INTO tbl_ficm (case_id, ficm_status, fmr_filled, recovery_amt, recovery_date, deposit_date, fir_status, amt_as_per_fir, case_status, remarks, Amt_recovered, created_by, updated_by) VALUES
(1, 'Pending', '2024-09-01 10:00:00', 2000.00, '2024-09-10 10:00:00', '2024-09-15 10:00:00', 'Filed', 10000.00, 'Active', 'Case under review.', 2000.00, 'admin', 'admin'),
(2, 'Completed', '2024-09-02 11:00:00', 1000.00, '2024-09-12 11:00:00', '2024-09-16 11:00:00', 'Filed', 5000.00, 'Closed', 'Case resolved successfully.', 1000.00, 'admin', 'admin'),
(3, 'Pending', '2024-09-03 12:00:00', 5000.00, '2024-09-13 12:00:00', '2024-09-18 12:00:00', 'Filed', 15000.00, 'Active', 'Investigation ongoing.', 5000.00, 'admin', 'admin'),
(4, 'Completed', '2024-09-04 13:00:00', 500.00, '2024-09-14 13:00:00', '2024-09-19 13:00:00', 'Closed', 2000.00, 'Resolved', 'Amount recovered.', 500.00, 'admin', 'admin'),
(5, 'Pending', '2024-09-05 14:00:00', 1000.00, '2024-09-15 14:00:00', '2024-09-20 14:00:00', 'Filed', 3000.00, 'Active', 'Pending further investigation.', 1000.00, 'admin', 'admin');


INSERT INTO tbl_fa (Case_id, date_of_posting, amount_posted, recovery_amount, amt_diff, fa_remarks, created_by, updated_by) VALUES
(1, '2024-09-01', 10000.00, 2000.00, 8000.00, 'Amount posted and recovery initiated.', 'admin', 'admin'),
(2, '2024-09-02', 5000.00, 1000.00, 4000.00, 'Initial posting and recovery process.', 'admin', 'admin'),
(3, '2024-09-03', 15000.00, 5000.00, 10000.00, 'High amount, significant recovery.', 'admin', 'admin'),
(4, '2024-09-04', 2000.00, 500.00, 1500.00, 'Partial recovery completed.', 'admin', 'admin'),
(5, '2024-09-05', 3000.00, 1000.00, 2000.00, 'Recovery ongoing.', 'admin', 'admin');

INSERT INTO tbl_team (id, emp_id, observations, conclusion, decision, head, created_by, updated_by) VALUES
(1, 'E001', 'Employee showed cooperation.', 'Recommended suspension.', 1, 1, 'admin', 'admin'),
(2, 'E002', 'Minor issues noted.', 'No severe action required.', 0, 0, 'admin', 'admin'),
(3, 'E003', 'Serious allegations.', 'Strong recommendation for termination.', 1, 0, 'admin', 'admin'),
(4, 'E004', 'Repeated absences.', 'Warning issued.', 0, 0, 'admin', 'admin'),
(5, 'E005', 'Policy adherence issues.', 'Further review needed.', 0, 0, 'admin', 'admin');

INSERT INTO tbl_committee (case_id, team_id, observations, conclusion, decision, created_by, updated_by) VALUES
(1, 1, 'Detailed review of evidence.', 'Suspension recommended.', 1, 'admin', 'admin'),
(2, 2, 'Minor issues and minor recommendations.', 'No severe action.', 0, 'admin', 'admin'),
(3, 3, 'Serious allegations and evidence.', 'Termination recommended.', 1, 'admin', 'admin'),
(4, 4, 'Repeated absences.', 'Issue warning.', 0, 'admin', 'admin'),
(5, 5, 'Policy violations.', 'Further investigation required.', 0, 'admin', 'admin');

