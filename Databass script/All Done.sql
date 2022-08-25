CREATE TABLE profile (
	profile_id SERIAL NOT NULL PRIMARY KEY,
	std_id int NOT NULL,
	profile_name VARCHAR(1024) NOT NULL,
	profile_lastname VARCHAR(1024) NOT NULL,
	operator_id SERIAL NOT NULL,
	images_id SERIAL NOT NULL,
	social_id SERIAL NOT NULL,
	invite_list_id SERIAL NOT NULL,
	inviter_ID SERIAL NOT NULL
);


CREATE TABLE position (
	position_id SERIAL NOT NULL PRIMARY KEY,
	position_name VARCHAR(1024) NOT NULL
);


CREATE TABLE login (
	login_id SERIAL NOT NULL PRIMARY KEY,
	username VARCHAR(1024) NOT NULL,
	password VARCHAR(1024) NOT NULL,
	profile_id SERIAL NOT NULL,
	CONSTRAINT fk_profile FOREIGN KEY(profile_id) REFERENCES profile(profile_id),
	position_id SERIAL NOT NULL,
	CONSTRAINT fk_position FOREIGN KEY(position_id) REFERENCES position(position_id),
	reg_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE operator (
	operator_id SERIAL NOT NULL PRIMARY KEY,
	phone VARCHAR(1024) NOT NULL,
	invite_phone VARCHAR(1024) NOT NULL,
	bff_phone VARCHAR(1024) NOT NULL
);

CREATE TABLE images (
	images_id SERIAL NOT NULL PRIMARY KEY,
	images_path VARCHAR(1024) NOT NULL
);

CREATE TABLE social (
	social_id SERIAL NOT NULL PRIMARY KEY,
	ig_social_link VARCHAR(1024) NOT NULL
);

CREATE TABLE invite (
	invite_list_id SERIAL NOT NULL PRIMARY KEY,
	invite_member VARCHAR(1024) NOT NULL
);

CREATE TABLE inviter (
	inviter_id SERIAL NOT NULL PRIMARY KEY,
	inviter_phone VARCHAR(1024) NOT NULL
);

ALTER TABLE profile ADD CONSTRAINT fk_operator
	FOREIGN KEY(operator_id)
	REFERENCES operator(operator_id);
	
ALTER TABLE profile ADD CONSTRAINT fk_images
	FOREIGN KEY(images_id)
	REFERENCES images(images_id);

ALTER TABLE profile ADD CONSTRAINT fk_social
	FOREIGN KEY(social_id)
	REFERENCES social(social_id);

ALTER TABLE profile ADD CONSTRAINT fk_invite
	FOREIGN KEY(invite_list_id)
	REFERENCES invite(invite_list_id);
	
ALTER TABLE profile ADD CONSTRAINT fk_inviter
	FOREIGN KEY(inviter_id)
	REFERENCES inviter(inviter_id);