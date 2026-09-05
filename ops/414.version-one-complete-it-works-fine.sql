-- @operation: export
-- @entity: batch
-- @name: version one complete, it works fine
-- @exportedAt: 2026-09-05T23:03:39.196Z
-- @opIds: 2238

-- --- BEGIN op 2238 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 5900
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'ULTIMATE English Audio'
  AND arr_type = 'radarr'
  AND score = 59001;
-- --- END op 2238
