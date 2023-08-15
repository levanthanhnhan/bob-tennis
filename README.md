# bob-tennis

-- Table: public.members

-- DROP TABLE IF EXISTS public.members;

CREATE TABLE IF NOT EXISTS public.members
(
    member_id bigint NOT NULL,
    member_name character varying COLLATE pg_catalog."default" NOT NULL,
    birthday timestamp without time zone NOT NULL,
    phone_number character varying COLLATE pg_catalog."default" NOT NULL,
    contact character varying COLLATE pg_catalog."default" NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    img_path character varying COLLATE pg_catalog."default" NOT NULL,
    level_id integer NOT NULL,
    CONSTRAINT members_pkey PRIMARY KEY (member_name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.members
    OWNER to postgres;