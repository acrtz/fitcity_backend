CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE location (
  id                   uuid DEFAULT uuid_generate_v1() PRIMARY KEY,
  name                 text,
  coordinates          point, 
  address              text,
  description          text,
  open_time            timestamptz,
  close_time           timestamptz
);

CREATE TABLE organization (
  id                   uuid DEFAULT uuid_generate_v1() PRIMARY KEY,
  name                 text,
  logo                 text,
  description          text
);

CREATE TABLE event (
  id                   uuid DEFAULT uuid_generate_v1() PRIMARY KEY,
  name                 text,
  description          text,
  start_time           timestamptz NOT NULL,
  end_time             timestamptz NOT NULL,
  canceled             bool DEFAULT false,
  capacity             integer,
  organization_id      uuid,     
  location_id          uuid,     
  FOREIGN KEY(organization_id) REFERENCES organization(id),     
  FOREIGN KEY(location_id) REFERENCES location(id)     
);

CREATE TABLE contact_info (
  id                uuid DEFAULT uuid_generate_v1() PRIMARY KEY,
  info              text,
  type              text
)