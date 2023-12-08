--
-- Class Car as table car
--

CREATE TABLE "car" (
  "id" serial,
  "brand" text NOT NULL,
  "model" text NOT NULL,
  "registrationDate" timestamp without time zone NOT NULL,
  "mileage" integer NOT NULL,
  "value" integer NOT NULL
);

ALTER TABLE ONLY "car"
  ADD CONSTRAINT car_pkey PRIMARY KEY (id);


