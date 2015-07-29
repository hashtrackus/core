alter table users alter column created_at set default current_timestamp;

alter table search_terms alter column created_at set default current_timestamp;

alter table user_search_terms alter column created_at set default current_timestamp;