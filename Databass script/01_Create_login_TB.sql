create table login (
	login_id int NOT NULL PRIMARY KEY,
	username_id VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	profile_id int NOT NULL,
	CONSTRAINT fk_profile
	FOREIGN KEY(profile_id)
	REFERENCES profile(profile_id)
);