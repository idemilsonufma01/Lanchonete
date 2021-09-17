CREATE DATABASE IF NOT EXISTS Lanchonete
DEFAULT CHARSET = utf8 
DEFAULT COLLATE = utf8_general_ci;

USE lanchonete;

CREATE TABLE auth_group (
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
name varchar(80) NOT NULL UNIQUE
);

CREATE TABLE auth_group_permissions (
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
group_id integer NOT NULL REFERENCES auth_group (id),
permission_id integer NOT NULL REFERENCES auth_permission(id)
);

CREATE TABLE auth_permission(
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
content_type_id integer NOT NULL REFERENCES django_content_type(id),
codename varchar(100) NOT NULL,
name varchar(255) NOT NULL
);

CREATE TABLE auth_user(
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
password varchar(128) NOT NULL,
last_login datetime NULL,
is_superuser bool NOT NULL,
username varchar(150) NOT NULL UNIQUE,
first_name varchar(30) NOT NULL,
email varchar(254) NOT NULL,
is_staff bool NOT NULL,
is_active bool NOT NULL,
date_joined datetime NOT NULL,
last_name varchar(150) NOT NULL
);

CREATE TABLE auth_user_groups (
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_id integer NOT NULL REFERENCES auth_user (id) , 
group_id integer NOT NULL REFERENCES uth_group (id)
);

CREATE TABLE auth_user_user_permissions(
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, 
user_id integer NOT NULL REFERENCES auth_user (id), 
permission_id integer NOT NULL REFERENCES auth_permission (id)
);

CREATE TABLE django_admin_log (
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
action_time datetime NOT NULL, 
object_id text NULL, 
object_repr varchar(200) NOT NULL, 
change_message text NOT NULL,
content_type_id integer NULL REFERENCES django_content_type (id),
user_id integer NOT NULL REFERENCES auth_user (id), 
action_flag smallint unsigned NOT NULL
);

CREATE TABLE django_content_type (
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
app_label varchar(100) NOT NULL, 
model varchar(100) NOT NULL
);

CREATE TABLE django_migrations (
id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
app varchar(255) NOT NULL,
name varchar(255) NOT NULL, 
applied datetime NOT NULL
);

CREATE TABLE django_session (
session_key varchar(40) NOT NULL PRIMARY KEY,
session_data text NOT NULL,
expire_date datetime NOT NULL
);

CREATE TABLE sqlite_sequence(
name varchar(100),
seq integer
);
