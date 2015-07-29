create table users (
  id  serial primary key,
  first_name varchar,
  last_name varchar,
  email varchar not null unique,
  password text not null,
  created_at timestamp with time zone,
  active_since timestamp with time zone,
  deactivated_at timestamp with time zone,
  CONSTRAINT proper_email CHECK (email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
 );

create table search_terms (
  id serial primary key,
  search_text text not null,
  created_at timestamp with time zone
);

create table user_search_terms (
  user_id integer references users,
  search_term_id integer references search_terms,
  created_at timestamp with time zone,
  active_since timestamp with time zone,
  deactivated_at timestamp with time zone
);