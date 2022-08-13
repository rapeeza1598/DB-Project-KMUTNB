CREATE TABLE profile(
	profile_id int NOT NULL PRIMARY KEY,
	std_id int NOT NULL,
	profile_name VARCHAR(1024) NOT NULL,
	profile_lastname VARCHAR(1024) NOT NULL,
	operator_id int NOT NULL,
	images_id int NOT NULL,
	social_id int NOT NULL,
	qr_code_id int NOT NULL,
	invite_list_id int NOT NULL,
	inviter_ID int NOT NULL
);