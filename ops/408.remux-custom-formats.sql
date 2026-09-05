-- @operation: export
-- @entity: batch
-- @name: remux custom formats
-- @exportedAt: 2026-09-05T15:58:48.462Z
-- @opIds: 2228, 2229, 2230, 2231, 2232, 2233, 2234, 2235, 2236, 2237, 2238, 2239, 2240, 2241, 2242, 2243, 2244, 2245, 2246, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271, 2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281, 2282, 2283, 2284, 2285, 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298, 2299, 2300, 2301, 2302, 2303, 2304, 2305, 2306, 2307, 2308, 2309, 2310, 2311, 2312, 2313, 2314, 2315, 2316, 2317, 2318, 2319, 2320, 2321, 2322, 2323, 2324, 2325, 2326, 2327, 2328, 2329, 2330, 2331, 2332, 2333, 2334, 2335, 2336
-- --- BEGIN op 2228 ( create regular_expression "3L" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('3L', '(?<=^|[\s.-])3L\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('3L', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('3L', 'Remux');
-- --- END op 2228

-- --- BEGIN op 2229 ( create regular_expression "ATELiER" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ATELiER', '(?<=^|[\s.-])ATELiER\b', 'Matches "ATELiER" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ATELiER', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ATELiER', 'Release Group');
-- --- END op 2229

-- --- BEGIN op 2230 ( create regular_expression "BiZKiT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BiZKiT', '(?<=^|[\s.-])BiZKiT\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiZKiT', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BiZKiT', 'Remux');
-- --- END op 2230

-- --- BEGIN op 2231 ( create regular_expression "BLURANiUM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BLURANiUM', '(?<=^|[\s.-])BLURANiUM\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BLURANiUM', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BLURANiUM', 'Remux');
-- --- END op 2231

-- --- BEGIN op 2232 ( create regular_expression "BMF" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BMF', '(?<=^|[\s.-])BMF\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BMF', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BMF', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BMF', 'Remux');
-- --- END op 2232

-- --- BEGIN op 2233 ( create regular_expression "BTN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('BTN', '(?<=^|[\s.-])BTN\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BTN', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('BTN', 'WEB-DL');
-- --- END op 2233

-- --- BEGIN op 2234 ( create regular_expression "CiNEPHiLES" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CiNEPHiLES', '(?<=^|[\s.-])CiNEPHiLES\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CiNEPHiLES', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CiNEPHiLES', 'Remux');
-- --- END op 2234

-- --- BEGIN op 2235 ( create regular_expression "decibeL" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('decibeL', '(?<=^|[\s.-])decibeL\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('decibeL', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('decibeL', 'Release Group');
-- --- END op 2235

-- --- BEGIN op 2236 ( create regular_expression "EPSiLON" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EPSiLON', '(?<=^|[\s.-])EPSiLON\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EPSiLON', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('EPSiLON', 'Remux');
-- --- END op 2236

-- --- BEGIN op 2237 ( create regular_expression "FraMeSToR" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('FraMeSToR', '(?<=^|[\s.-])FraMeSToR\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FraMeSToR', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('FraMeSToR', 'Remux');
-- --- END op 2237

-- --- BEGIN op 2238 ( create regular_expression "HiFi" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('HiFi', '(?<=^|[\s.-])HiFi\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiFi', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('HiFi', 'Release Group');
-- --- END op 2238

-- --- BEGIN op 2239 ( create regular_expression "iFT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('iFT', '(?<=^|[\s.-])iFT\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iFT', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('iFT', 'Release Group');
-- --- END op 2239

-- --- BEGIN op 2240 ( create regular_expression "KRaLiMaRKo" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KRaLiMaRKo', '(?<=^|[\s.-])KRaLiMaRKo\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KRaLiMaRKo', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KRaLiMaRKo', 'Remux');
-- --- END op 2240

-- --- BEGIN op 2241 ( create regular_expression "LEGi0N" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LEGi0N', '(?<=^|[\s.-])LEGi0N\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LEGi0N', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LEGi0N', 'Release Group');
-- --- END op 2241

-- --- BEGIN op 2242 ( create regular_expression "LM" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LM', '(?<=^|[\s.-])LM\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LM', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LM', 'Remux');
-- --- END op 2242

-- --- BEGIN op 2243 ( create regular_expression "maniac" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('maniac', '(?<=^|[\s.-])maniac\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('maniac', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('maniac', 'Remux');
-- --- END op 2243

-- --- BEGIN op 2244 ( create regular_expression "NCmt" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('NCmt', '(?<=^|[\s.-])NCmt\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NCmt', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NCmt', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('NCmt', 'Remux');
-- --- END op 2244

-- --- BEGIN op 2245 ( create regular_expression "PiRAMiDHEAD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PiRAMiDHEAD', '(?<=^|[\s.-])PiRAMiDHEAD\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiRAMiDHEAD', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PiRAMiDHEAD', 'Remux');
-- --- END op 2245

-- --- BEGIN op 2246 ( create regular_expression "playBD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('playBD', '(?<=^|[\s.-])playBD\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('playBD', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('playBD', 'Remux');
-- --- END op 2246

-- --- BEGIN op 2247 ( create regular_expression "PmP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PmP', '(?<=^|[\s.-])PmP\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PmP', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PmP', 'Remux');
-- --- END op 2247

-- --- BEGIN op 2248 ( create regular_expression "PP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PP', '(?<=^|[\s.-])PP\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PP', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PP', 'Remux');
-- --- END op 2248

-- --- BEGIN op 2249 ( create regular_expression "PTP" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('PTP', '(?<=^|[\s.-])PTP\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PTP', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('PTP', 'Remux');
-- --- END op 2249

-- --- BEGIN op 2250 ( create regular_expression "SiCFoI" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('SiCFoI', '(?<=^|[\s.-])SiCFoI\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('SiCFoI', 'Remux');
-- --- END op 2250

-- --- BEGIN op 2251 ( create regular_expression "TEPES" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TEPES', '(?<=^|[\s.-])TEPES\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TEPES', 'Release Group');

insert into "tags" ("name") values ('WEB-DL') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TEPES', 'WEB-DL');
-- --- END op 2251

-- --- BEGIN op 2252 ( create regular_expression "TRiToN" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('TRiToN', '(?<=^|[\s.-])TRiToN\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRiToN', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('TRiToN', 'Remux');
-- --- END op 2252

-- --- BEGIN op 2253 ( create regular_expression "WiLDCAT" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('WiLDCAT', '(?<=^|[\s.-])WiLDCAT\b', '', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WiLDCAT', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('WiLDCAT', 'Remux');
-- --- END op 2253

-- --- BEGIN op 2254 ( create regular_expression "ZoroSenpai" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZoroSenpai', '(?<=^|[\s.-])ZoroSenpai\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZoroSenpai', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZoroSenpai', 'Release Group');
-- --- END op 2254

-- --- BEGIN op 2255 ( create regular_expression "ZQ" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('ZQ', '(?<=^|[\s.-])ZQ\b', '', NULL);

insert into "tags" ("name") values ('Bluray') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZQ', 'Bluray');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZQ', 'Release Group');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('ZQ', 'Remux');
-- --- END op 2255

-- --- BEGIN op 2256 ( create custom_format "Remux" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux', 'Matches Remux as a codec, not a source. Either h265 or h264.', 0);
-- --- END op 2256

-- --- BEGIN op 2257 ( update custom_format "Remux" )
insert into "tags" ("name") values ('Storage') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux', 'Storage');
-- --- END op 2257

-- --- BEGIN op 2258 ( update custom_format "Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux', 'Remux', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux', 'Remux', 'Remux');
-- --- END op 2258

-- --- BEGIN op 2259 ( update custom_format "Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux', 'Not DVD', 'source', 'all', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux', 'Not DVD', 'dvd');
-- --- END op 2259

-- --- BEGIN op 2260 ( update custom_format "Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux', 'Remux Quality Match', 'quality_modifier', 'radarr', 0, 0);

INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('Remux', 'Remux Quality Match', 'remux');
-- --- END op 2260

-- --- BEGIN op 2261 ( update custom_format "Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux', 'Remux Source', 'source', 'sonarr', 0, 0);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux', 'Remux Source', 'bluray_raw');
-- --- END op 2261

-- --- BEGIN op 2262 ( create custom_format "1080p Remux" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('1080p Remux', 'Matches 1080p Remux', 0);
-- --- END op 2262

-- --- BEGIN op 2263 ( update custom_format "1080p Remux" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('1080p Remux', 'Source');
-- --- END op 2263

-- --- BEGIN op 2264 ( update custom_format "1080p Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Remux', '1080p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p Remux', '1080p', '1080p');
-- --- END op 2264

-- --- BEGIN op 2265 ( update custom_format "1080p Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('1080p Remux', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Remux', 'Remux', 'Remux');
-- --- END op 2265

-- --- BEGIN op 2266 ( create custom_format "2160p Remux" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('2160p Remux', 'Matches 2160p Remux', 0);
-- --- END op 2266

-- --- BEGIN op 2267 ( update custom_format "2160p Remux" )
insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('2160p Remux', 'Source');
-- --- END op 2267

-- --- BEGIN op 2268 ( update custom_format "2160p Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Remux', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('2160p Remux', '2160p', '2160p');
-- --- END op 2268

-- --- BEGIN op 2269 ( update custom_format "2160p Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p Remux', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('2160p Remux', 'Remux', 'Remux');
-- --- END op 2269

-- --- BEGIN op 2270 ( create custom_format "DVD Remux" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('DVD Remux', 'A DVD Remux is a direct rip of a DVD''s content without any re-encoding, preserving the original video, audio, and subtitle quality. It retains the exact resolution, bitrate, and format of the DVD, ensuring no loss in fidelity compared to the source.', 0);
-- --- END op 2270

-- --- BEGIN op 2271 ( update custom_format "DVD Remux" )
insert into "tags" ("name") values ('Lossless') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('DVD Remux', 'Lossless');

insert into "tags" ("name") values ('SD') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('DVD Remux', 'SD');

insert into "tags" ("name") values ('Source') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('DVD Remux', 'Source');
-- --- END op 2271

-- --- BEGIN op 2272 ( update custom_format "DVD Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DVD Remux', 'DVD', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DVD Remux', 'DVD', 'dvd');
-- --- END op 2272

-- --- BEGIN op 2273 ( update custom_format "DVD Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('DVD Remux', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DVD Remux', 'Remux', 'Remux');
-- --- END op 2273

-- --- BEGIN op 2274 ( create custom_format "x265 (Remux)" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('x265 (Remux)', 'Matches x265 Remux Releases when not 2160p', 0);
-- --- END op 2274

-- --- BEGIN op 2275 ( update custom_format "x265 (Remux)" )
insert into "tags" ("name") values ('Codec') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('x265 (Remux)', 'Codec');
-- --- END op 2275

-- --- BEGIN op 2276 ( update custom_format "x265 (Remux)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (Remux)', 'x265', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (Remux)', 'x265', 'HEVC');
-- --- END op 2276

-- --- BEGIN op 2277 ( update custom_format "x265 (Remux)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (Remux)', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('x265 (Remux)', 'Remux', 'Remux');
-- --- END op 2277

-- --- BEGIN op 2278 ( update custom_format "x265 (Remux)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('x265 (Remux)', 'Not 2160p', 'resolution', 'all', 1, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('x265 (Remux)', 'Not 2160p', '2160p');
-- --- END op 2278

-- --- BEGIN op 2279 ( create custom_format "Remux Tier 1" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux Tier 1', 'Matches release groups who fall under Remux Tier 1', 0);
-- --- END op 2279

-- --- BEGIN op 2280 ( update custom_format "Remux Tier 1" )
insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 1', 'Release Group Tier');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 1', 'Remux');
-- --- END op 2280

-- --- BEGIN op 2281 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'Remux', 'Remux');
-- --- END op 2281

-- --- BEGIN op 2282 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'Not DVD', 'source', 'all', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux Tier 1', 'Not DVD', 'dvd');
-- --- END op 2282

-- --- BEGIN op 2283 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', '3L', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', '3L', '3L');
-- --- END op 2283

-- --- BEGIN op 2284 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'BiZKiT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'BiZKiT', 'BiZKiT');
-- --- END op 2284

-- --- BEGIN op 2285 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'BLURANiUM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'BLURANiUM', 'BLURANiUM');
-- --- END op 2285

-- --- BEGIN op 2286 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'CiNEPHiLES', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'CiNEPHiLES', 'CiNEPHiLES');
-- --- END op 2286

-- --- BEGIN op 2287 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'WiLDCAT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'WiLDCAT', 'WiLDCAT');
-- --- END op 2287

-- --- BEGIN op 2288 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'ZoroSenpai', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'ZoroSenpai', 'ZoroSenpai');
-- --- END op 2288

-- --- BEGIN op 2289 ( update custom_format "Remux Tier 1" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 1', 'LM', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 1', 'LM', 'LM');
-- --- END op 2289

-- --- BEGIN op 2290 ( create custom_format "Remux Tier 2" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux Tier 2', 'Matches release groups who fall under Remux Tier 2', 0);
-- --- END op 2290

-- --- BEGIN op 2291 ( update custom_format "Remux Tier 2" )
insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 2', 'Release Group Tier');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 2', 'Remux');
-- --- END op 2291

-- --- BEGIN op 2292 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'Remux', 'Remux');
-- --- END op 2292

-- --- BEGIN op 2293 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'Not DVD', 'source', 'all', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux Tier 2', 'Not DVD', 'dvd');
-- --- END op 2293

-- --- BEGIN op 2294 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'BMF', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'BMF', 'BMF');
-- --- END op 2294

-- --- BEGIN op 2295 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'FraMeSToR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'FraMeSToR', 'FraMeSToR');
-- --- END op 2295

-- --- BEGIN op 2296 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'PiRAMiDHEAD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'PiRAMiDHEAD', 'PiRAMiDHEAD');
-- --- END op 2296

-- --- BEGIN op 2297 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'PmP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'PmP', 'PmP');
-- --- END op 2297

-- --- BEGIN op 2298 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'PP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'PP', 'PP');
-- --- END op 2298

-- --- BEGIN op 2299 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'ZQ', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'ZQ', 'ZQ');
-- --- END op 2299

-- --- BEGIN op 2300 ( update custom_format "Remux Tier 2" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 2', 'maniac', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 2', 'maniac', 'maniac');
-- --- END op 2300

-- --- BEGIN op 2301 ( create custom_format "Remux Tier 3" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux Tier 3', 'Matches release groups who fall under Remux Tier 3', 0);
-- --- END op 2301

-- --- BEGIN op 2302 ( update custom_format "Remux Tier 3" )
insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 3', 'Release Group Tier');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 3', 'Remux');
-- --- END op 2302

-- --- BEGIN op 2303 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'Remux', 'Remux');
-- --- END op 2303

-- --- BEGIN op 2304 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'Not DVD', 'source', 'all', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux Tier 3', 'Not DVD', 'dvd');
-- --- END op 2304

-- --- BEGIN op 2305 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'ATELiER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'ATELiER', 'ATELiER');
-- --- END op 2305

-- --- BEGIN op 2306 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'decibeL', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'decibeL', 'decibeL');
-- --- END op 2306

-- --- BEGIN op 2307 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'EPSiLON', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'EPSiLON', 'EPSiLON');
-- --- END op 2307

-- --- BEGIN op 2308 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'HiFi', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'HiFi', 'HiFi');
-- --- END op 2308

-- --- BEGIN op 2309 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'NCmt', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'NCmt', 'NCmt');
-- --- END op 2309

-- --- BEGIN op 2310 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'SiCFoI', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'SiCFoI', 'SiCFoI');
-- --- END op 2310

-- --- BEGIN op 2311 ( update custom_format "Remux Tier 3" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 3', 'TEPES', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 3', 'TEPES', 'TEPES');
-- --- END op 2311

-- --- BEGIN op 2312 ( create custom_format "Remux Tier 4" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Remux Tier 4', 'Matches release groups who fall under Remux Tier 4', 0);
-- --- END op 2312

-- --- BEGIN op 2313 ( update custom_format "Remux Tier 4" )
insert into "tags" ("name") values ('Release Group Tier') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 4', 'Release Group Tier');

insert into "tags" ("name") values ('Remux') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Remux Tier 4', 'Remux');
-- --- END op 2313

-- --- BEGIN op 2314 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'Remux', 'Remux');
-- --- END op 2314

-- --- BEGIN op 2315 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'Not DVD', 'source', 'all', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux Tier 4', 'Not DVD', 'dvd');
-- --- END op 2315

-- --- BEGIN op 2316 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'BTN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'BTN', 'BTN');
-- --- END op 2316

-- --- BEGIN op 2317 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'iFT', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'iFT', 'iFT');
-- --- END op 2317

-- --- BEGIN op 2318 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'KRaLiMaRKo', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'KRaLiMaRKo', 'KRaLiMaRKo');
-- --- END op 2318

-- --- BEGIN op 2319 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'playBD', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'playBD', 'playBD');
-- --- END op 2319

-- --- BEGIN op 2320 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'PTP', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'PTP', 'PTP');
-- --- END op 2320

-- --- BEGIN op 2321 ( update custom_format "Remux Tier 4" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Remux Tier 4', 'TRiToN', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux Tier 4', 'TRiToN', 'TRiToN');
-- --- END op 2321

-- --- BEGIN op 2322 ( create custom_format "Banned Remux" )
insert into "custom_formats" ("name", "description", "include_in_rename") values ('Banned Remux', 'Matches otherwise unfavourable remux groups - bloated audio tracks, fake HDR, etc.', 0);
-- --- END op 2322

-- --- BEGIN op 2323 ( update custom_format "Banned Remux" )
insert into "tags" ("name") values ('Banned') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Banned Remux', 'Banned');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Banned Remux', 'Release Group');
-- --- END op 2323

-- --- BEGIN op 2324 ( update custom_format "Banned Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Remux', 'Remux', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Remux', 'Remux', 'Remux');
-- --- END op 2324

-- --- BEGIN op 2325 ( update custom_format "Banned Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Remux', 'Not DVD', 'source', 'all', 1, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Banned Remux', 'Not DVD', 'dvd');
-- --- END op 2325

-- --- BEGIN op 2326 ( update custom_format "Banned Remux" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Banned Remux', 'LEGi0N', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Banned Remux', 'LEGi0N', 'LEGi0N');
-- --- END op 2326

-- --- BEGIN op 2327 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', '1080p Remux', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = '1080p Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2327

-- --- BEGIN op 2328 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', '1080p Remux', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = '1080p Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2328

-- --- BEGIN op 2329 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 1', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2329

-- --- BEGIN op 2330 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 1', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2330

-- --- BEGIN op 2331 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 2', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2331

-- --- BEGIN op 2332 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 2', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2332

-- --- BEGIN op 2333 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 3', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2333

-- --- BEGIN op 2334 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 3', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2334

-- --- BEGIN op 2335 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 4', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2335

-- --- BEGIN op 2336 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Remux Tier 4', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Remux Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2336
