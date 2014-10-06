-- Table: date

-- DROP TABLE date;

CREATE TABLE date
(
  id serial NOT NULL,
  year smallint,
  month smallint,
  day smallint,
  vacation boolean,
  workday boolean,
  weekday character varying(20),
  CONSTRAINT date_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE date
  OWNER TO postgres;

-- Table: location

-- DROP TABLE location;

CREATE TABLE location
(
  id serial NOT NULL,
  name character varying(30),
  locationid smallint
  CONSTRAINT location_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE location
  OWNER TO postgres;

-- Table: member

-- DROP TABLE member;

CREATE TABLE member
(
  id serial NOT NULL,
  joinyear smallint,
  study character varying(10),
  memberid smallint,
  CONSTRAINT member_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE member
  OWNER TO postgres;

-- Table: product

-- DROP TABLE product;

CREATE TABLE product
(
  id serial NOT NULL,
  name character varying(40),
  price integer,
  version integer,
  CONSTRAINT product_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE product
  OWNER TO postgres;

-- Table: sale

-- DROP TABLE sale;

CREATE TABLE sale
(
  id serial NOT NULL,
  productid smallint,
  memberid smallint,
  locationid smallint,
  dateid smallint,
  price integer,
  timeofdayid smallint,
  CONSTRAINT sales_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE sale
  OWNER TO postgres;

-- Table: timeofday

-- DROP TABLE timeofday;

CREATE TABLE timeofday
(
  hour smallint,
  id serial NOT NULL,
  morning boolean,
  afternoon boolean,
  CONSTRAINT timeofday_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE timeofday
  OWNER TO postgres;
