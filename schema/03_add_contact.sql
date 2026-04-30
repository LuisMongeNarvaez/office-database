-- Add a new contact
INSERT INTO contacts (full_name, email, phone, company, notes)
VALUES ('', '', '', '', '')
RETURNING *;
