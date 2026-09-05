-- @operation: export
-- @entity: batch
-- @name: updates
-- @exportedAt: 2026-09-05T15:47:57.822Z
-- @opIds: 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2219, 2220, 2221, 2222, 2223, 2224, 2225, 2226, 2227

-- --- BEGIN op 2199 ( create regular_expression "Thetrical Release Movie ultimate" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Thetrical Release Movie ultimate', '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)', 'Matches releases with Dual Audio; and EN + JP', NULL);

insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Thetrical Release Movie ultimate', 'language');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Thetrical Release Movie ultimate', 'ultimate');
-- --- END op 2199

-- --- BEGIN op 2200 ( update regular_expression "Thetrical Release Movie ultimate" )
update "regular_expressions" set "description" = 'Idea is to filter out Anime files that are movies or theatrical releases inside Sonarr.' where "name" = 'Thetrical Release Movie ultimate' and "description" = 'Matches releases with Dual Audio; and EN + JP';
-- --- END op 2200

-- --- BEGIN op 2201 ( update regular_expression "Thetrical Release Movie ultimate" )
update "regular_expressions" set "pattern" = '(?i)\b(?:the[\s._-]?)?(?:gekijou(?:ban)?|theatrical|cinema|film|movie)\b|\b(?:ova|oad|omake|tokubetsu|gaiden)\b|\b(?:soushuuhen|compilation|recap|digest|summary)\b|\b(?:side[\s._-]?story|prologue|epilogue|interlude)\b|\b(?:part|chapter|act)[\s._-]*\d+\b(?!.*\b(?:s\d+|season|e\d+|ep\d+)\b)' where "name" = 'Thetrical Release Movie ultimate' and "pattern" = '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)';
-- --- END op 2201

-- --- BEGIN op 2202 ( update regular_expression "Anime Non-Episodic Content ultimate" )
update "regular_expressions" set "name" = 'Anime Non-Episodic Content ultimate' where "name" = 'Thetrical Release Movie ultimate';
-- --- END op 2202

-- --- BEGIN op 2203 ( update regular_expression "Anime Non-Episodic Content" )
update "regular_expressions" set "name" = 'Anime Non-Episodic Content' where "name" = 'Anime Non-Episodic Content ultimate';
-- --- END op 2203

-- --- BEGIN op 2204 ( create custom_format "Anime Non-Episodic Content ultimate" )
insert into "custom_formats" ("name", "description") values ('Anime Non-Episodic Content ultimate', '');
-- --- END op 2204

-- --- BEGIN op 2205 ( update custom_format "Anime Non-Episodic Content ultimate" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'Anime Non-Episodic Content ultimate' and "description" = '';
-- --- END op 2205

-- --- BEGIN op 2206 ( update custom_format "Anime Non-Episodic Content ultimate" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime Non-Episodic Content ultimate', 'Anime');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime Non-Episodic Content ultimate', 'ultimate');
-- --- END op 2206

-- --- BEGIN op 2207 ( update custom_format "Anime Non-Episodic Content ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Non-Episodic Content ultimate', 'Dual Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Non-Episodic Content ultimate', 'Dual Audio', 'Dual Audio Anime');
-- --- END op 2207

-- --- BEGIN op 2208 ( update custom_format "Anime Non-Episodic Content ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime Non-Episodic Content ultimate'
	  AND name = 'Dual Audio'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 2208

-- --- BEGIN op 2209 ( update custom_format "Anime Non-Episodic Content ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Non-Episodic Content ultimate', 'Is a Movie', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Non-Episodic Content ultimate', 'Is a Movie', 'Anime Non-Episodic Content');
-- --- END op 2209

-- --- BEGIN op 2210 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Non-Episodic Content ultimate', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Non-Episodic Content ultimate'
    AND arr_type = 'sonarr'
);
-- --- END op 2210

-- --- BEGIN op 2211 ( update quality_profile "ULTIMATE English Anime 1080p" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_group_name = '1080p'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_group_name = '1080p') = 4
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_group_name = '1080p'
      AND quality_name NOT IN ('Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_group_name = '1080p'
        AND NOT (
          (quality_name = 'Bluray-1080p'
        AND position = 0)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 2)
      OR (quality_name = 'HDTV-1080p'
        AND position = 3)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_group_name = '1080p'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
      AND quality_group_name = '1080p'
  ) = 0 AS ok
),
new_rows AS (
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'Remux-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'Bluray-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 3 AS position
UNION ALL
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'HDTV-1080p' AS quality_name, 4 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2211

-- --- BEGIN op 2212 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 101
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio ultimate'
  AND arr_type = 'radarr'
  AND score = 20000;
-- --- END op 2212

-- --- BEGIN op 2213 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 101
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio ultimate'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 2213

-- --- BEGIN op 2214 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 101
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dub Only Anime ultimate'
  AND arr_type = 'radarr'
  AND score = 10000;
-- --- END op 2214

-- --- BEGIN op 2215 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 101
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dub Only Anime ultimate'
  AND arr_type = 'sonarr'
  AND score = 10000;
-- --- END op 2215

-- --- BEGIN op 2216 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio ultimate'
  AND arr_type = 'radarr'
  AND score = 101;
-- --- END op 2216

-- --- BEGIN op 2217 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio ultimate'
  AND arr_type = 'sonarr'
  AND score = 101;
-- --- END op 2217

-- --- BEGIN op 2218 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dub Only Anime ultimate'
  AND arr_type = 'radarr'
  AND score = 101;
-- --- END op 2218

-- --- BEGIN op 2219 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dub Only Anime ultimate'
  AND arr_type = 'sonarr'
  AND score = 101;
-- --- END op 2219

-- --- BEGIN op 2220 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 150
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2220

-- --- BEGIN op 2221 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 150
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2221

-- --- BEGIN op 2222 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio ultimate'
  AND arr_type = 'radarr'
  AND score = 1001;
-- --- END op 2222

-- --- BEGIN op 2223 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime Dual Audio ultimate'
  AND arr_type = 'sonarr'
  AND score = 1001;
-- --- END op 2223

-- --- BEGIN op 2224 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dub Only Anime ultimate'
  AND arr_type = 'radarr'
  AND score = 1001;
-- --- END op 2224

-- --- BEGIN op 2225 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dub Only Anime ultimate'
  AND arr_type = 'sonarr'
  AND score = 1001;
-- --- END op 2225

-- --- BEGIN op 2226 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 350
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Multi-Audio'
  AND arr_type = 'radarr'
  AND score = 1001;
-- --- END op 2226

-- --- BEGIN op 2227 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 350
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Multi-Audio'
  AND arr_type = 'sonarr'
  AND score = 1001;
-- --- END op 2227
