GRANT USAGE ON SCHEMA ${dbSchema} TO ${dbSchema}${roleSuffix}_read;

GRANT SELECT
ON ALL TABLES IN SCHEMA ${dbSchema}
TO ${dbSchema}${roleSuffix}_read;

GRANT ${dbSchema}${roleSuffix}_read TO ${dbUser};

-- Create role with write privilege
--CREATE ROLE ${dbSchema}${roleSuffix}_write;

GRANT USAGE ON SCHEMA ${dbSchema} TO ${dbSchema}${roleSuffix}_write;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA ${dbSchema}
TO ${dbSchema}${roleSuffix}_write;

GRANT USAGE
ON ALL SEQUENCES IN SCHEMA ${dbSchema}
TO ${dbSchema}${roleSuffix}_write;

GRANT ${dbSchema}${roleSuffix}_write TO ${dbUser};
