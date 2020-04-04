create table USER_ROLES (
    id uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v1(),
    name varchar(200)
);
CREATE INDEX ON USER_ROLES (lower(name));

insert into USER_ROLES (name) values
('site_admin'),
('site_user');


ALTER TABLE USERS
    ADD COLUMN user_role_id uuid REFERENCES USER_ROLES(id);

CREATE OR REPLACE FUNCTION set_role_if_required()
    RETURNS trigger AS
$BODY$
BEGIN
    IF NEW.user_role_id ISNULL THEN
        NEW.user_role_id = (SELECT id FROM USER_ROLES WHERE name = 'site_user');
    END IF;

    RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER set_user_role_after_insert
    BEFORE insert
    ON USERS FOR EACH ROW
EXECUTE PROCEDURE set_role_if_required();
