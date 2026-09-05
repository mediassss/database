-- @operation: export
-- @entity: batch
-- @name: u pdate
-- @exportedAt: 2026-09-05T16:58:46.186Z
-- @opIds: 2230, 2231, 2232

-- --- BEGIN op 2230 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = -4
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'No English Audio ultimate'
  AND arr_type = 'radarr'
  AND score = -1;
-- --- END op 2230

-- --- BEGIN op 2231 ( update quality_profile "ULTIMATE English Anime 1080p" )
update "quality_profiles" set "upgrade_until_score" = 70000 where "name" = 'ULTIMATE English Anime 1080p' and "upgrade_until_score" = 60000;
-- --- END op 2231

-- --- BEGIN op 2232 ( update quality_profile "ULTIMATE English Anime 1080p" )
update "quality_profiles" set "upgrade_until_score" = 60000 where "name" = 'ULTIMATE English Anime 1080p' and "upgrade_until_score" = 70000;
-- --- END op 2232
