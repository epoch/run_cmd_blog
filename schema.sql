create database run_cmd_blog;

create table users (
  id serial primary key,
  email varchar(300),
  password_digest varchar(300),
  username varchar(300)
);

create table articles (
  id serial primary key,
  user_id integer,
  title varchar(100),
  body text,
  created_at timestamp,
  updated_at timestamp,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE RESTRICT
);
