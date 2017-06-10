INSERT INTO user (email, password_hash)
VALUES ('demo@localhost', '$2a$10$ebyC4Z5WtCXXc.HGDc1Yoe6CLFzcntFmfse6/pTj7CeDY5I05w16C');

INSERT INTO role (name)
VALUES ('ADMIN');

INSERT INTO privilege (name)
VALUES ('READ');
INSERT INTO privilege (name)
VALUES ('WRITE');

INSERT INTO users_roles (user_id, role_id)
VALUES (1,1);

INSERT INTO roles_privileges (role_id, privilege_id)
VALUES (1,1);
INSERT INTO roles_privileges (role_id, privilege_id)
VALUES (1,2);

