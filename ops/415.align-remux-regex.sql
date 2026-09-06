-- @operation: export
-- @entity: batch
-- @name: align remux regex with radarr parser
-- @exportedAt: 2026-09-06T15:38:23.008Z
-- @opIds: 2341

-- --- BEGIN op 2341 ( update regular_expression "Remux" )
update "regular_expressions" set "pattern" = '\b((BD|UHD)[-_. ]?)?Remux\b' where "name" = 'Remux' and "pattern" = 'Remux';
-- --- END op 2341
