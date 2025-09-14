INSERT INTO job_applied(
    job_id, 
    applicatiion_sent_date,
    custom_resume,
    resume_filename,
    cover_letter_sent,
    cover_letter_filename,
    status_of_application)
VALUES
(101, '2025-08-01', TRUE, 'resume_john_101.pdf', TRUE, 'cover_letter_101.pdf', 'Sent'),
(102, '2025-08-02', FALSE, 'resume_generic.pdf', FALSE, NULL, 'Sent'),
(103, '2025-08-03', TRUE, 'resume_john_103.pdf', TRUE, 'cover_letter_103.pdf', 'Interview Scheduled'),
(104, '2025-08-04', TRUE, 'resume_john_104.pdf', FALSE, NULL, 'Rejected'),
(105, '2025-08-05', FALSE, 'resume_generic.pdf', TRUE, 'cover_letter_105.pdf', 'Sent'),
(106, '2025-08-06', TRUE, 'resume_john_106.pdf', TRUE, 'cover_letter_106.pdf', 'Offer Received'),
(107, '2025-08-07', TRUE, 'resume_john_107.pdf', TRUE, 'cover_letter_107.pdf', 'Sent'),
(108, '2025-08-08', FALSE, 'resume_generic.pdf', FALSE, NULL, 'Sent'),
(109, '2025-08-09', TRUE, 'resume_john_109.pdf', TRUE, 'cover_letter_109.pdf', 'Rejected'),
(110, '2025-08-10', TRUE, 'resume_john_110.pdf', FALSE, NULL, 'Sent'),
(111, '2025-08-11', FALSE, 'resume_generic.pdf', TRUE, 'cover_letter_111.pdf', 'Interview Scheduled'),
(112, '2025-08-12', TRUE, 'resume_john_112.pdf', TRUE, 'cover_letter_112.pdf', 'Sent'),
(113, '2025-08-13', FALSE, 'resume_generic.pdf', FALSE, NULL, 'Sent'),
(114, '2025-08-14', TRUE, 'resume_john_114.pdf', TRUE, 'cover_letter_114.pdf', 'Rejected'),
(115, '2025-08-15', TRUE, 'resume_john_115.pdf', TRUE, 'cover_letter_115.pdf', 'Offer Declined');