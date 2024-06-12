CREATE TABLE public.phone (
	id serial4 NOT NULL,
	user_id serial4 NOT NULL,
	phone_number varchar(20) NOT NULL,
	created_at timestamp NULL DEFAULT now(),
	CONSTRAINT phone_pk PRIMARY KEY (id),
    CONSTRAINT phone_users_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE ON UPDATE CASCADE
);
