-- Add up migration script here
BEGIN;

CREATE TABLE todo (
  id            SERIAL PRIMARY KEY,
  status        TEXT NOT NULL DEFAULT 'todo',
  title         TEXT NOT NULL,
  description   TEXT,
  user_id       TEXT  NOT NULL,
  created_at    timestamptz DEFAULT now(),
  updated_at    timestamptz DEFAULT now()
);

COMMIT;
