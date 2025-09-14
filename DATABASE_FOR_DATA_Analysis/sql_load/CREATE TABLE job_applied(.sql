CREATE TABLE job_applied(
    job_id INT,
    applicatiion_sent_date DATE,
    custom_resume BOOLEAN,
    resume_filename VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_filename VARCHAR(255),
    status_of_application VARCHAR(255)
);

SELECT * FROM job_applied;

-- DROP TABLE job_applied;

ALTER TABLE job_applied
ADD COLUMN contact VARCHAR(50);


UPDATE job_applied SET contact = 'Vaibhav Khadse' WHERE job_id = 101;
UPDATE job_applied SET contact = 'Ananya Mehta' WHERE job_id = 102;
UPDATE job_applied SET contact = 'Rohit Sharma' WHERE job_id = 103;
UPDATE job_applied SET contact = 'Priya Verma' WHERE job_id = 104;
UPDATE job_applied SET contact = 'Karan Singh' WHERE job_id = 105;
UPDATE job_applied SET contact = 'Sneha Patil' WHERE job_id = 106;
UPDATE job_applied SET contact = 'Amit Deshmukh' WHERE job_id = 107;
UPDATE job_applied SET contact = 'Nikita Rao' WHERE job_id = 108;
UPDATE job_applied SET contact = 'Rahul Joshi' WHERE job_id = 109;
UPDATE job_applied SET contact = 'Isha Malhotra' WHERE job_id = 110;
UPDATE job_applied SET contact = 'Arjun Kapoor' WHERE job_id = 111;
UPDATE job_applied SET contact = 'Divya Sharma' WHERE job_id = 112;
UPDATE job_applied SET contact = 'Manav Gupta' WHERE job_id = 113;
UPDATE job_applied SET contact = 'Sakshi Nair' WHERE job_id = 114;
UPDATE job_applied SET contact = 'Neeraj Sinha' WHERE job_id = 115;



