-- @operation: export
-- @entity: batch
-- @name: raise upgrade until score
-- @exportedAt: 2026-09-05T18:05:00.000Z
-- @opIds: 2338

-- --- BEGIN op 2338 ( update quality_profile "ULTIMATE English Anime 1080p" )
update "quality_profiles" set "upgrade_until_score" = 69000 where "name" = 'ULTIMATE English Anime 1080p' and "upgrade_until_score" = 60000;
-- --- END op 2338
