DROP TABLE IF EXISTS peeps CASCADE;

CREATE TABLE peeps (
    id SERIAL PRIMARY KEY,
    content text,
    time timestamp without time zone,
    user_id int, 
    constraint fk_user foreign key (user_id)
      references users(id)
      on delete cascade
);

TRUNCATE TABLE peeps RESTART IDENTITY; 

INSERT INTO peeps (content, time, user_id) VALUES
('First peep ever', current_timestamp, 1),
('Second peep ever', current_timestamp, 2);
