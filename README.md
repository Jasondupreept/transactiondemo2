# transactiondemo2

getting set up:

- You'll need to update app_config with your own urls/keys.
- run "pub get" to download dependencies
- run "dart run build_runner watch -d" to generate any files if they are missing (though I think they were included in the repository so you may not have to.)

Here are the definitions of the 2 tables in supabase

create table public.workouts ( id uuid not null default gen_random_uuid (), created_at timestamp with time zone not null default now(), name text null, notes text null, state text null, completed boolean not null default false, start_time timestamp with time zone null, end_time timestamp with time zone null, scheduled_time timestamp with time zone null, template_id text null, circuits jsonb null, type text null, phase_id uuid null, user_id uuid null default auth.uid (), constraint workouts_pkey primary key (id), constraint workouts_phase_id_fkey foreign key (phase_id) references phases (id) on update cascade on delete set null, constraint workouts_user_id_fkey foreign key (user_id) references profiles (id) on update cascade on delete cascade ) tablespace pg_default;

create table public.workout_items ( created_at timestamp with time zone not null default now(), name text null, circuit_node text not null default 'none'::text, selected_index smallint null, notes text[] null, demo_url text null, tracking_fields text[] null, id uuid not null default gen_random_uuid (), workout_id uuid null, index smallint null, weight_unit text null, progression_name text null, constraint workout_items_pkey primary key (id), constraint public_workout_items_workout_id_fkey foreign key (workout_id) references workouts (id) on update cascade on delete cascade ) tablespace pg_default;

create table
public.workout_items (
created_at timestamp with time zone not null default now(),
name text null,
circuit_node text not null default 'none'::text,
selected_index smallint null,
notes text[] null,
demo_url text null,
tracking_fields text[] null,
id uuid not null default gen_random_uuid (),
workout_id uuid null,
index smallint null,
weight_unit text null,
progression_name text null,
constraint workout_items_pkey primary key (id),
constraint public_workout_items_workout_id_fkey foreign key (workout_id) references workouts (id) on update cascade on delete cascade
) tablespace pg_default;
