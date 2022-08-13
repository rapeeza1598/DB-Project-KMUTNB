ALTER TABLE profile ADD CONSTRAINT fk_operator
	FOREIGN KEY(operator_id)
	REFERENCES operator(operator_id);
	
ALTER TABLE profile ADD CONSTRAINT fk_images
	FOREIGN KEY(images_id)
	REFERENCES images(images_id);

ALTER TABLE profile ADD CONSTRAINT fk_social
	FOREIGN KEY(social_id)
	REFERENCES social(social_id)

ALTER TABLE profile ADD CONSTRAINT fk_qr_code
	FOREIGN KEY(qr_code_id)
	REFERENCES qr_code(qr_code_id)
	
ALTER TABLE profile ADD CONSTRAINT fk_invite
	FOREIGN KEY(invite_list_id)
	REFERENCES invite(invite_list_id)
	
ALTER TABLE profile ADD CONSTRAINT fk_inviter
	FOREIGN KEY(inviter_id)
	REFERENCES inviter(inviter_id)
/* ALTER TABLE profile drop CONSTRAINT fk_images_id