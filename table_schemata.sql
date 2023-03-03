-- Table: public.employees

-- DROP TABLE IF EXISTS public.employees;

CREATE TABLE IF NOT EXISTS public.employees
(
    employee_no integer NOT NULL,
    employee_title_id character varying(30) COLLATE pg_catalog."default" NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    sex character varying(3) COLLATE pg_catalog."default",
    hire_date date NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (employee_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;
--------------------------------------------------------------------------- 
-- Table: public.department_manager

-- DROP TABLE IF EXISTS public.department_manager;

CREATE TABLE IF NOT EXISTS public.department_manager
(
    department_no character varying(30) COLLATE pg_catalog."default" NOT NULL,
    employee_no integer NOT NULL,
    CONSTRAINT department_manager_pkey PRIMARY KEY (employee_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.department_manager
    OWNER to postgres;

 -----------------------------------------------------------------------------   
-- Table: public.department_emp

-- DROP TABLE IF EXISTS public.department_emp;

CREATE TABLE IF NOT EXISTS public.department_emp
(
    employee_no integer,
    department_no character varying(30) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.department_emp
    OWNER to postgres;

 -----------------------------------------------------------------------------  
-- Table: public.titles

-- DROP TABLE IF EXISTS public.titles;

CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying(30) COLLATE pg_catalog."default" NOT NULL,
    titles character varying(30) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT titles_pkey PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.titles
    OWNER to postgres;
 -----------------------------------------------------------------------------  

-- Table: public.salaries

-- DROP TABLE IF EXISTS public.salaries;

CREATE TABLE IF NOT EXISTS public.salaries
(
    employee_no integer NOT NULL,
    salary money NOT NULL,
    CONSTRAINT salaries_pkey PRIMARY KEY (employee_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salaries
    OWNER to postgres;
 -----------------------------------------------------------------------------  
 -- Table: public.departments

-- DROP TABLE IF EXISTS public.departments;

CREATE TABLE IF NOT EXISTS public.departments
(
    department_no character varying COLLATE pg_catalog."default" NOT NULL,
    department_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departments_pkey PRIMARY KEY (department_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.departments
    OWNER to postgres;