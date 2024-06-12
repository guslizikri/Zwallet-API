CREATE TABLE public.transactions (
	id serial4 NOT NULL,
	sender_id serial4 NOT NULL,
	receiver_id serial4 NOT NULL,
	amount int4 NOT NULL,
	notes text NULL,
	date_transaction timestamp NOT NULL DEFAULT now(),
	created_at timestamp NULL DEFAULT now(),
	CONSTRAINT transactions_pk PRIMARY KEY (id),
    CONSTRAINT receiver_fk FOREIGN KEY (receiver_id) REFERENCES public.users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT sender_fk FOREIGN KEY (sender_id) REFERENCES public.users(id) ON DELETE CASCADE ON UPDATE CASCADE
);
