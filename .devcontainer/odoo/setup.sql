-- Create a new user and a role.
CREATE USER odoo_user WITH PASSWORD 'jajnav5@';
CREATE ROLE odoo_admin;

-- Grant standard superuser privileges to the role.
ALTER ROLE odoo_admin WITH SUPERUSER;

-- Grant the new Role public schema table permission.
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO odoo_admin;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO odoo_admin;

-- Link the user to the role.
GRANT odoo_admin TO odoo_user;

-- Create the Keycloak database and grant privileges to the role/user.
CREATE DATABASE odoo OWNER odoo_user;

-- Optional: Grant all privileges on the database to the role and user.
GRANT ALL PRIVILEGES ON DATABASE odoo TO odoo_admin;
GRANT ALL PRIVILEGES ON DATABASE odoo TO odoo_user;

-- Optional: Grant all privileges on the database to the role and user.
GRANT ALL PRIVILEGES ON DATABASE postgres TO odoo_admin;
GRANT ALL PRIVILEGES ON DATABASE postgres TO odoo_user;

-- Grant CREATE privilege on the 'public' schema
-- to ensure the application can create its tables.
GRANT CREATE ON SCHEMA public TO odoo_admin;
GRANT CREATE ON SCHEMA public TO odoo_user;