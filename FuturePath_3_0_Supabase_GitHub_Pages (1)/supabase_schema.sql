-- FuturePath 3.0 reference schema.
-- Your database has already been created; this is included for backup/reference.

create table if not exists public.profiles (
 id uuid primary key references auth.users(id) on delete cascade,
 display_name text,
 avatar_url text,
 xp integer not null default 0,
 level integer not null default 1,
 created_at timestamptz not null default now(),
 updated_at timestamptz not null default now()
);
create table if not exists public.revision_progress (
 user_id uuid not null references auth.users(id) on delete cascade,
 subject text not null,
 topic text not null,
 completed boolean not null default false,
 score integer not null default 0,
 updated_at timestamptz not null default now(),
 primary key(user_id,subject,topic)
);
create table if not exists public.saved_careers (
 user_id uuid not null references auth.users(id) on delete cascade,
 career_id text not null,
 created_at timestamptz not null default now(),
 primary key(user_id,career_id)
);
create table if not exists public.achievements (
 user_id uuid not null references auth.users(id) on delete cascade,
 achievement_id text not null,
 unlocked_at timestamptz not null default now(),
 primary key(user_id,achievement_id)
);
