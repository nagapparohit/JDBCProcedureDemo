CREATE TABLE public.eproduct
(
    id integer NOT NULL DEFAULT nextval('eproduct_id_seq'::regclass),
    name character varying(100) COLLATE pg_catalog."default",
    price numeric(10,2),
    date_added timestamp without time zone DEFAULT now()
)
insert into eproduct (name,price) values ('logitect mouse',200);
insert into eproduct (name,price) values ('apple laptop',90000);
insert into eproduct (name,price) values ('dell laptop',40000);
insert into eproduct (name,price) values ('hp laptop',30000);

create  function add_product(
		pname varchar(100),
		pprice numeric(10,2)
) 
returns void as $$
begin 
	insert into eproduct (name,price) values (pname,pprice);	

end;$$
language plpgsql

select add_product('xiamoi',10000)
select add_product('redmi',13000)
