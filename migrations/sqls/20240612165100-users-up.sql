CREATE TABLE public.users (
	id serial4 NOT NULL,
	email varchar(255) UNIQUE NOT NULL,
	username varchar(255) UNIQUE NOT NULL,
	password varchar(255) NOT NULL,
	pin varchar(6) NOT NULL DEFAULT '123456',
	balance int4 NOT NULL DEFAULT 0,
	image text null,
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP null,
	CONSTRAINT users_pk PRIMARY KEY (id)
);
