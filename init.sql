DO
$do$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'java_app') THEN
      PERFORM dblink_exec('dbname=' || current_database(), 'CREATE DATABASE java_app');
   END IF;
END
$do$;
