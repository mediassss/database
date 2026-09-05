-- @operation: export
-- @entity: batch
-- @name: sizes update v1
-- @exportedAt: 2026-09-05T13:58:34.760Z
-- @opIds: 2143, 2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155, 2156, 2157, 2158, 2159, 2160, 2161, 2162, 2163, 2164, 2165, 2166, 2167, 2168, 2169, 2170, 2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178, 2179, 2180, 2181, 2182, 2183, 2184, 2185, 2186, 2187, 2188, 2189, 2190, 2191, 2192, 2193, 2194, 2195, 2196

-- --- BEGIN op 2143 ( create custom_format "Anime ultimate size:" )
insert into "custom_formats" ("name", "description") values ('Anime ultimate size:', '');
-- --- END op 2143

-- --- BEGIN op 2144 ( update custom_format "Anime ultimate size:" )
update "custom_formats" set "description" = 'This is part of the anime ultimate profile point system
- gives points based on size' where "name" = 'Anime ultimate size:' and "description" = '';
-- --- END op 2144

-- --- BEGIN op 2145 ( update custom_format "Anime ultimate size:" )
insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size:', 'ultimate');

insert into "tags" ("name") values ('size') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size:', 'size');
-- --- END op 2145

-- --- BEGIN op 2146 ( update custom_format "Anime ultimate size 1.1 - 18" )
update "custom_formats" set "name" = 'Anime ultimate size 1.1 - 18' where "name" = 'Anime ultimate size:';
-- --- END op 2146

-- --- BEGIN op 2147 ( update custom_format "Anime ultimate size 1.1 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 1.1 - 18', 'Size Preference', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 1.1 - 18', 'Size Preference', 1181116006, 19327352832);
-- --- END op 2147

-- --- BEGIN op 2148 ( create custom_format "Anime ultimate size 1.6 - 18" )
insert into "custom_formats" ("name", "description") values ('Anime ultimate size 1.6 - 18', '');
-- --- END op 2148

-- --- BEGIN op 2149 ( update custom_format "Anime ultimate size 1.6 - 18" )
update "custom_formats" set "description" = 'This is part of the anime ultimate profile point system
- gives points based on size' where "name" = 'Anime ultimate size 1.6 - 18' and "description" = '';
-- --- END op 2149

-- --- BEGIN op 2150 ( update custom_format "Anime ultimate size 1.6 - 18" )
insert into "tags" ("name") values ('size') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 1.6 - 18', 'size');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 1.6 - 18', 'ultimate');
-- --- END op 2150

-- --- BEGIN op 2151 ( update custom_format "Anime ultimate size 1.6 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 1.6 - 18', 'Size Preference', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 1.6 - 18', 'Size Preference', 1181116006, 19327352832);
-- --- END op 2151

-- --- BEGIN op 2152 ( update custom_format "Anime ultimate size 1.6 - 18" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Anime ultimate size 1.6 - 18' AND condition_name = 'Size Preference' AND min_bytes IS 1181116006 AND max_bytes IS 19327352832;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 1.6 - 18', 'Size Preference', 1717986918, 19327352832);
-- --- END op 2152

-- --- BEGIN op 2153 ( create custom_format "Anime ultimate size 1.6 - 18 (Copy)" )
insert into "custom_formats" ("name", "description") values ('Anime ultimate size 1.6 - 18 (Copy)', '');
-- --- END op 2153

-- --- BEGIN op 2154 ( update custom_format "Anime ultimate size 1.6 - 18 (Copy)" )
update "custom_formats" set "description" = 'This is part of the anime ultimate profile point system
- gives points based on size' where "name" = 'Anime ultimate size 1.6 - 18 (Copy)' and "description" = '';
-- --- END op 2154

-- --- BEGIN op 2155 ( update custom_format "Anime ultimate size 1.6 - 18 (Copy)" )
insert into "tags" ("name") values ('size') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 1.6 - 18 (Copy)', 'size');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 1.6 - 18 (Copy)', 'ultimate');
-- --- END op 2155

-- --- BEGIN op 2156 ( update custom_format "Anime ultimate size 1.6 - 18 (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 1.6 - 18 (Copy)', 'Size Preference', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 1.6 - 18 (Copy)', 'Size Preference', 1717986918, 19327352832);
-- --- END op 2156

-- --- BEGIN op 2157 ( update custom_format "Anime ultimate size 2.1 - 18" )
update "custom_formats" set "name" = 'Anime ultimate size 2.1 - 18' where "name" = 'Anime ultimate size 1.6 - 18 (Copy)';
-- --- END op 2157

-- --- BEGIN op 2158 ( update custom_format "Anime ultimate size 2.1 - 18" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Anime ultimate size 2.1 - 18' AND condition_name = 'Size Preference' AND min_bytes IS 1717986918 AND max_bytes IS 19327352832;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 2.1 - 18', 'Size Preference', 2254857830, 19327352832);
-- --- END op 2158

-- --- BEGIN op 2159 ( create custom_format "Anime ultimate size 3 - 18" )
insert into "custom_formats" ("name", "description") values ('Anime ultimate size 3 - 18', '');
-- --- END op 2159

-- --- BEGIN op 2160 ( update custom_format "Anime ultimate size 3 - 18" )
update "custom_formats" set "description" = 'This is part of the anime ultimate profile point system
- gives points based on size' where "name" = 'Anime ultimate size 3 - 18' and "description" = '';
-- --- END op 2160

-- --- BEGIN op 2161 ( update custom_format "Anime ultimate size 3 - 18" )
insert into "tags" ("name") values ('size') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 3 - 18', 'size');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 3 - 18', 'ultimate');
-- --- END op 2161

-- --- BEGIN op 2162 ( update custom_format "Anime ultimate size 3 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 3 - 18', 'Size Preference', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 3 - 18', 'Size Preference', 2254857830, 19327352832);
-- --- END op 2162

-- --- BEGIN op 2163 ( update custom_format "Anime ultimate size 3 - 18" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Anime ultimate size 3 - 18' AND condition_name = 'Size Preference' AND min_bytes IS 2254857830 AND max_bytes IS 19327352832;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 3 - 18', 'Size Preference', 3221225472, 19327352832);
-- --- END op 2163

-- --- BEGIN op 2164 ( create custom_format "Anime ultimate size 5 - 18" )
insert into "custom_formats" ("name", "description") values ('Anime ultimate size 5 - 18', '');
-- --- END op 2164

-- --- BEGIN op 2165 ( update custom_format "Anime ultimate size 5 - 18" )
update "custom_formats" set "description" = 'This is part of the anime ultimate profile point system
- gives points based on size' where "name" = 'Anime ultimate size 5 - 18' and "description" = '';
-- --- END op 2165

-- --- BEGIN op 2166 ( update custom_format "Anime ultimate size 5 - 18" )
insert into "tags" ("name") values ('size') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 5 - 18', 'size');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 5 - 18', 'ultimate');
-- --- END op 2166

-- --- BEGIN op 2167 ( update custom_format "Anime ultimate size 5 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 5 - 18', 'Size Preference', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 5 - 18', 'Size Preference', 3221225472, 19327352832);
-- --- END op 2167

-- --- BEGIN op 2168 ( update custom_format "Anime ultimate size 5 - 18" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Anime ultimate size 5 - 18' AND condition_name = 'Size Preference' AND min_bytes IS 3221225472 AND max_bytes IS 19327352832;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 5 - 18', 'Size Preference', 5368709120, 19327352832);
-- --- END op 2168

-- --- BEGIN op 2169 ( create custom_format "Anime ultimate size 7 - 18" )
insert into "custom_formats" ("name", "description") values ('Anime ultimate size 7 - 18', '');
-- --- END op 2169

-- --- BEGIN op 2170 ( update custom_format "Anime ultimate size 7 - 18" )
update "custom_formats" set "description" = 'This is part of the anime ultimate profile point system
- gives points based on size' where "name" = 'Anime ultimate size 7 - 18' and "description" = '';
-- --- END op 2170

-- --- BEGIN op 2171 ( update custom_format "Anime ultimate size 7 - 18" )
insert into "tags" ("name") values ('size') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 7 - 18', 'size');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime ultimate size 7 - 18', 'ultimate');
-- --- END op 2171

-- --- BEGIN op 2172 ( update custom_format "Anime ultimate size 7 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 7 - 18', 'Size Preference', 'size', 'all', 0, 1);

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 7 - 18', 'Size Preference', 5368709120, 19327352832);
-- --- END op 2172

-- --- BEGIN op 2173 ( update custom_format "Anime ultimate size 7 - 18" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Anime ultimate size 7 - 18' AND condition_name = 'Size Preference' AND min_bytes IS 5368709120 AND max_bytes IS 19327352832;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 7 - 18', 'Size Preference', 7516192768, 19327352832);
-- --- END op 2173

-- --- BEGIN op 2174 ( update custom_format "Anime ultimate size 1.1 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 1.1 - 18', 'Release Type', 'release_type', 'all', 0, 1);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Anime ultimate size 1.1 - 18', 'Release Type', 'single_episode');
-- --- END op 2174

-- --- BEGIN op 2175 ( update custom_format "Anime ultimate size 1.6 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 1.6 - 18', 'Release Type', 'release_type', 'all', 0, 1);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Anime ultimate size 1.6 - 18', 'Release Type', 'single_episode');
-- --- END op 2175

-- --- BEGIN op 2176 ( update custom_format "Anime ultimate size 2.1 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 2.1 - 18', 'Release Type', 'release_type', 'all', 0, 1);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Anime ultimate size 2.1 - 18', 'Release Type', 'single_episode');
-- --- END op 2176

-- --- BEGIN op 2177 ( update custom_format "Anime ultimate size 3 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 3 - 18', 'Release Type', 'release_type', 'all', 0, 1);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Anime ultimate size 3 - 18', 'Release Type', 'single_episode');
-- --- END op 2177

-- --- BEGIN op 2178 ( update custom_format "Anime ultimate size 5 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 5 - 18', 'Release Type', 'release_type', 'all', 0, 1);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Anime ultimate size 5 - 18', 'Release Type', 'single_episode');
-- --- END op 2178

-- --- BEGIN op 2179 ( update custom_format "Anime ultimate size 7 - 18" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime ultimate size 7 - 18', 'Release Type', 'release_type', 'all', 0, 1);

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type) VALUES ('Anime ultimate size 7 - 18', 'Release Type', 'single_episode');
-- --- END op 2179

-- --- BEGIN op 2180 ( update custom_format "Anime ultimate size 7 - 18" )
DELETE FROM condition_sizes WHERE custom_format_name = 'Anime ultimate size 7 - 18' AND condition_name = 'Size Preference' AND min_bytes IS 7516192768 AND max_bytes IS 19327352832;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes) VALUES ('Anime ultimate size 7 - 18', 'Size Preference', 7516192768, 21474836480);
-- --- END op 2180

-- --- BEGIN op 2181 ( update custom_format "Anime ultimate size 7 - 20" )
update "custom_formats" set "name" = 'Anime ultimate size 7 - 20' where "name" = 'Anime ultimate size 7 - 18';
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime ultimate size 1.1 - 18', 'sonarr', 6400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime ultimate size 1.1 - 18'
    AND arr_type = 'sonarr'
);
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime ultimate size 1.6 - 18', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime ultimate size 1.6 - 18'
    AND arr_type = 'sonarr'
);
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime ultimate size 2.1 - 18', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime ultimate size 2.1 - 18'
    AND arr_type = 'sonarr'
);
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime ultimate size 3 - 18', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime ultimate size 3 - 18'
    AND arr_type = 'sonarr'
);
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime ultimate size 5 - 18', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime ultimate size 5 - 18'
    AND arr_type = 'sonarr'
);
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime ultimate size 7 - 20', 'sonarr', 2200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime ultimate size 7 - 20'
    AND arr_type = 'sonarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 59001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'ULTIMATE English Audio'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 4400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime ultimate size 1.1 - 18'
  AND arr_type = 'sonarr'
  AND score = 6400;
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 3200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime ultimate size 1.1 - 18'
  AND arr_type = 'sonarr'
  AND score = 4400;
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime ultimate size 1.6 - 18'
  AND arr_type = 'sonarr'
  AND score = 2200;
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime ultimate size 2.1 - 18'
  AND arr_type = 'sonarr'
  AND score = 2200;
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime ultimate size 3 - 18'
  AND arr_type = 'sonarr'
  AND score = 2200;
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime ultimate size 5 - 18'
  AND arr_type = 'sonarr'
  AND score = 2200;
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime ultimate size 7 - 20'
  AND arr_type = 'sonarr'
  AND score = 2200;
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 59001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'ULTIMATE English Audio'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2196
