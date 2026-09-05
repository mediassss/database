-- @operation: export
-- @entity: batch
-- @name: ultimate audio v1
-- @exportedAt: 2026-09-05T12:02:29.620Z
-- @opIds: 1901, 1902, 1903, 1904, 1905, 1906, 1907, 1908, 1909, 1910, 1911, 1912, 1913, 1914, 1915, 1916, 1917, 1918, 1919, 1920, 1921, 1922, 1923, 1924, 1925, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1935, 1936, 1937, 1938, 1939, 1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949, 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2068, 2069, 2070, 2071, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093, 2094, 2095, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139, 2140, 2141

-- --- BEGIN op 1901 ( create regular_expression "Dual Audio Anime" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dual Audio Anime', 'dual[ ._-]?(audio)|[([]dual[])]|\b(JA|ZH|KO)(?= ?\+ ?.*?\b(EN))|\b(EN)(?= ?\+ ?.*?\b(JA|ZH|KO))|\b(Japanese|Chinese|Korean) ?[ ._\+&-] ?\b(English)|\b(English) ?[ ._\+&-] ?\b(Japanese|Chinese|Korean)|\b(\d{3,4}(p|i)|4K|U(ltra)?HD)\b.*\b(DUAL)\b(?!.*\(|\))', NULL, NULL);
-- --- END op 1901

-- --- BEGIN op 1902 ( update regular_expression "Dual Audio Anime" )
update "regular_expressions" set "description" = 'Matches releases with Dual Audio; and EN + JP' where "name" = 'Dual Audio Anime' and "description" is null;
-- --- END op 1902

-- --- BEGIN op 1903 ( update regular_expression "Dual Audio Anime" )
update "regular_expressions" set "pattern" = '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)' where "name" = 'Dual Audio Anime' and "pattern" = 'dual[ ._-]?(audio)|[([]dual[])]|\b(JA|ZH|KO)(?= ?\+ ?.*?\b(EN))|\b(EN)(?= ?\+ ?.*?\b(JA|ZH|KO))|\b(Japanese|Chinese|Korean) ?[ ._\+&-] ?\b(English)|\b(English) ?[ ._\+&-] ?\b(Japanese|Chinese|Korean)|\b(\d{3,4}(p|i)|4K|U(ltra)?HD)\b.*\b(DUAL)\b(?!.*\(|\))';
-- --- END op 1903

-- --- BEGIN op 1904 ( create regular_expression "Dub Only Audio Anime" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Dub Only Audio Anime', '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)', 'Matches releases with Dual Audio; and EN + JP', NULL);
-- --- END op 1904

-- --- BEGIN op 1905 ( update regular_expression "Dub Only Audio Anime" )
update "regular_expressions" set "description" = 'Matches releases that have English Dub but explicitly lack Japanese audio' where "name" = 'Dub Only Audio Anime' and "description" = 'Matches releases with Dual Audio; and EN + JP';
-- --- END op 1905

-- --- BEGIN op 1906 ( update regular_expression "Dub Only Audio Anime" )
update "regular_expressions" set "pattern" = '(?i)^(?!.*(?:\b(?:dual|multi)\b|\b(?:japanese|jpn|jap)\b|(?<![a-z0-9])jp(?!(?:[-._ ]?bd(?:mv)?|[a-z0-9]))|\bvostfr\b|\braws?\b))(?=.*(?:\bdub(?:s|bed|bing)?\b|\b(?:english|eng)[\s._-]?(?:dub|audio|only)\b)).*' where "name" = 'Dub Only Audio Anime' and "pattern" = '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)';
-- --- END op 1906

-- --- BEGIN op 1907 ( create regular_expression "English Audio Anime" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('English Audio Anime', '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)', 'Matches releases with Dual Audio; and EN + JP', NULL);
-- --- END op 1907

-- --- BEGIN op 1908 ( update regular_expression "English Audio Anime" )
update "regular_expressions" set "description" = 'Should guarantee a release has English Audio dub or dual audio for anime releases' where "name" = 'English Audio Anime' and "description" = 'Matches releases with Dual Audio; and EN + JP';
-- --- END op 1908

-- --- BEGIN op 1909 ( update regular_expression "English Audio Anime" )
update "regular_expressions" set "pattern" = '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:eng(?:lish)?[\s._-]?(?:dub(?:bed|bing)?|audio|only)|dubbed)\b|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b|(?<=[\[\(-])(?:Kametsu|Golumpa|LostYears|Exiled-Destiny|Koten_Gars|DragsterPS|Small-Maze|Bunny-Apocalypse|Naiyas|Hark0n|KAWAI|TTGA|Aone|FraMeSToR|CiNEPHiLES|BLURANiUM|EPSiLON|TRiToN|WiLDCAT|Neo-HEVC|ANThELIa|xSales|iAHD|DON|PmP|NAN0|NANO|FLUX|decibeL|BMDragon|TayTO|playBD|ZR|ZQ|3L|CTR|MK)(?=[\]\)\s._\-]|\b|$))' where "name" = 'English Audio Anime' and "pattern" = '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)';
-- --- END op 1909

-- --- BEGIN op 1910 ( create regular_expression "English Audio Release Groups Anime" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('English Audio Release Groups Anime', '(?i)^(?!.*(?:\b(?:dual|multi)\b|\b(?:japanese|jpn|jap)\b|(?<![a-z0-9])jp(?!(?:[-._ ]?bd(?:mv)?|[a-z0-9]))|\bvostfr\b|\braws?\b))(?=.*(?:\bdub(?:s|bed|bing)?\b|\b(?:english|eng)[\s._-]?(?:dub|audio|only)\b)).*', 'Matches releases that have English Dub but explicitly lack Japanese audio', NULL);
-- --- END op 1910

-- --- BEGIN op 1911 ( update regular_expression "English Audio Release Groups Anime" )
update "regular_expressions" set "description" = 'For unlabelled dual audio, groups.' where "name" = 'English Audio Release Groups Anime' and "description" = 'Matches releases that have English Dub but explicitly lack Japanese audio';
-- --- END op 1911

-- --- BEGIN op 1912 ( update regular_expression "English Audio Release Groups Anime" )
update "regular_expressions" set "pattern" = '(?i)(?:(?<![A-Za-z0-9])(?:Kametsu|Golumpa|LostYears|Exiled-Destiny|Koten_Gars|DragsterPS|Small-Maze|Bunny-Apocalypse|Naiyas|Hark0n|TTGA|FraMeSToR|CiNEPHiLES|BLURANiUM|EPSiLON|TRiToN|WiLDCAT|Neo-HEVC|ANThELIa|xSales|iAHD|PmP|FLUX|decibeL|BMDragon|TayTO|playBD)(?![A-Za-z0-9])|(?<=[\[\(-])(?:NAN0|NANO|DON|KAWAI|Aone|ZR|ZQ|3L|CTR|MK)(?=[\]\)\s._\-]|$))' where "name" = 'English Audio Release Groups Anime' and "pattern" = '(?i)^(?!.*(?:\b(?:dual|multi)\b|\b(?:japanese|jpn|jap)\b|(?<![a-z0-9])jp(?!(?:[-._ ]?bd(?:mv)?|[a-z0-9]))|\bvostfr\b|\braws?\b))(?=.*(?:\bdub(?:s|bed|bing)?\b|\b(?:english|eng)[\s._-]?(?:dub|audio|only)\b)).*';
-- --- END op 1912

-- --- BEGIN op 1913 ( create regular_expression "Likely no English Audio Anime" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Likely no English Audio Anime', '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)', 'Matches releases with Dual Audio; and EN + JP', NULL);
-- --- END op 1913

-- --- BEGIN op 1914 ( update regular_expression "Likely no English Audio Anime" )
update "regular_expressions" set "description" = 'detects the absence of English' where "name" = 'Likely no English Audio Anime' and "description" = 'Matches releases with Dual Audio; and EN + JP';
-- --- END op 1914

-- --- BEGIN op 1915 ( update regular_expression "Likely no English Audio Anime" )
update "regular_expressions" set "pattern" = '(?i)(?:\b(?:raws?|vostfr|sub[\s._-]?only|jp[\s._-]?only|jpn[\s._-]?only)\b|(?<=[\[\(-])(?:Beatrice-Raws|VCB-Studio|ReinForce|SCY|MTBB)(?=[\]\)\s._\-]|\b|$))' where "name" = 'Likely no English Audio Anime' and "pattern" = '(?i)(?:\b(?:dual|multi)[\s._-]?(?:audio|lang(?:uage)?s?)\b|\b2[\s._-]?audio\b|\[dual(?:-audio)?\]|\b(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)[\s._+\-&/\[\]()]{1,3}(?:english|eng|en)\b|\b(?:english|eng|en)[\s._+\-&/\[\]()]{1,3}(?:japanese|jpn|jap|ja|jp|chinese|chs|cht|chi|zho|zh|korean|kor|ko)\b)';
-- --- END op 1915

-- --- BEGIN op 1916 ( update regular_expression "Dual Audio Anime" )
insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dual Audio Anime', 'language');
-- --- END op 1916

-- --- BEGIN op 1917 ( update regular_expression "Dub Only Audio Anime" )
insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dub Only Audio Anime', 'language');
-- --- END op 1917

-- --- BEGIN op 1918 ( update regular_expression "English Audio Anime" )
insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('English Audio Anime', 'language');
-- --- END op 1918

-- --- BEGIN op 1919 ( update regular_expression "Likely no English Audio Anime" )
insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Likely no English Audio Anime', 'language');
-- --- END op 1919

-- --- BEGIN op 1920 ( update regular_expression "English Audio Release Groups Anime" )
insert into "tags" ("name") values ('language') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('English Audio Release Groups Anime', 'language');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('English Audio Release Groups Anime', 'ultimate');
-- --- END op 1920

-- --- BEGIN op 1921 ( update regular_expression "Likely no English Audio Anime" )
insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Likely no English Audio Anime', 'ultimate');
-- --- END op 1921

-- --- BEGIN op 1922 ( update regular_expression "Dual Audio Anime" )
insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dual Audio Anime', 'ultimate');
-- --- END op 1922

-- --- BEGIN op 1923 ( update regular_expression "Dub Only Audio Anime" )
insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dub Only Audio Anime', 'ultimate');
-- --- END op 1923

-- --- BEGIN op 1924 ( update regular_expression "English Audio Anime" )
insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('English Audio Anime', 'ultimate');
-- --- END op 1924

-- --- BEGIN op 1925 ( create custom_format "Anime Dual Audio (Copy)" )
insert into "custom_formats" ("name", "description") values ('Anime Dual Audio (Copy)', '');
-- --- END op 1925

-- --- BEGIN op 1926 ( update custom_format "Anime Dual Audio (Copy)" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'Anime Dual Audio (Copy)' and "description" = '';
-- --- END op 1926

-- --- BEGIN op 1927 ( update custom_format "Anime Dual Audio (Copy)" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime Dual Audio (Copy)', 'Anime');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime Dual Audio (Copy)', 'TRaSH');
-- --- END op 1927

-- --- BEGIN op 1928 ( update custom_format "Anime Dual Audio (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio (Copy)', 'Chinese', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Anime Dual Audio (Copy)', 'Chinese', 'Chinese', 0);
-- --- END op 1928

-- --- BEGIN op 1929 ( update custom_format "Anime Dual Audio (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio (Copy)', 'Dual Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Dual Audio (Copy)', 'Dual Audio', 'Dual Audio');
-- --- END op 1929

-- --- BEGIN op 1930 ( update custom_format "Anime Dual Audio (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio (Copy)', 'Japanese', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Anime Dual Audio (Copy)', 'Japanese', 'Japanese', 0);
-- --- END op 1930

-- --- BEGIN op 1931 ( update custom_format "Anime Dual Audio (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio (Copy)', 'Korean', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Anime Dual Audio (Copy)', 'Korean', 'Korean', 0);
-- --- END op 1931

-- --- BEGIN op 1932 ( update custom_format "Anime Dual Audio (Copy)" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio (Copy)', 'Not Single Language Only', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Dual Audio (Copy)', 'Not Single Language Only', 'Anime Single Language');
-- --- END op 1932

-- --- BEGIN op 1933 ( update custom_format "Anime Dual Audio ultimate" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Anime Dual Audio (Copy)' AND tag_name = 'TRaSH';

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Anime Dual Audio (Copy)', 'ultimate');
-- --- END op 1933

-- --- BEGIN op 1934 ( update custom_format "Anime Dual Audio ultimate" )
update "custom_formats" set "name" = 'Anime Dual Audio ultimate' where "name" = 'Anime Dual Audio (Copy)';
-- --- END op 1934

-- --- BEGIN op 1935 ( update custom_format "Anime Dual Audio ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime Dual Audio ultimate'
	  AND name = 'Chinese'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1935

-- --- BEGIN op 1936 ( update custom_format "Anime Dual Audio ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime Dual Audio ultimate'
	  AND name = 'Japanese'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1936

-- --- BEGIN op 1937 ( update custom_format "Anime Dual Audio ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime Dual Audio ultimate'
	  AND name = 'Korean'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1937

-- --- BEGIN op 1938 ( update custom_format "Anime Dual Audio ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Anime Dual Audio ultimate'
	  AND name = 'Not Single Language Only'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 1938

-- --- BEGIN op 1939 ( update custom_format "Anime Dual Audio ultimate" )
DELETE FROM condition_patterns WHERE custom_format_name = 'Anime Dual Audio ultimate' AND condition_name = 'Dual Audio' AND regular_expression_name = 'Dual Audio';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Dual Audio ultimate', 'Dual Audio', 'Dual Audio Anime');
-- --- END op 1939

-- --- BEGIN op 1940 ( create custom_format "English release groups ultimate" )
insert into "custom_formats" ("name", "description") values ('English release groups ultimate', '');
-- --- END op 1940

-- --- BEGIN op 1941 ( update custom_format "English release groups ultimate" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'English release groups ultimate' and "description" = '';
-- --- END op 1941

-- --- BEGIN op 1942 ( update custom_format "English release groups ultimate" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('English release groups ultimate', 'Anime');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('English release groups ultimate', 'ultimate');
-- --- END op 1942

-- --- BEGIN op 1943 ( update custom_format "English release groups ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English release groups ultimate', 'Dual Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('English release groups ultimate', 'Dual Audio', 'Dual Audio Anime');
-- --- END op 1943

-- --- BEGIN op 1944 ( update custom_format "English release groups ultimate" )
update "custom_formats" set "description" = 'look for english release groups' where "name" = 'English release groups ultimate' and "description" = 'Matches releases with both the original language as well as English.';
-- --- END op 1944

-- --- BEGIN op 1945 ( update custom_format "English release groups ultimate" )
DELETE FROM condition_patterns WHERE custom_format_name = 'English release groups ultimate' AND condition_name = 'Dual Audio' AND regular_expression_name = 'Dual Audio Anime';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('English release groups ultimate', 'Dual Audio', 'English Audio Release Groups Anime');
-- --- END op 1945

-- --- BEGIN op 1946 ( update custom_format "English release groups ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'English release groups ultimate'
	  AND name = 'Dual Audio'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1946

-- --- BEGIN op 1947 ( update custom_format "English release groups ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English release groups ultimate', 'English Groups', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('English release groups ultimate', 'English Groups', 'English Audio Release Groups Anime');
-- --- END op 1947

-- --- BEGIN op 1948 ( update custom_format "English Audio Release Groups ultimate" )
update "custom_formats" set "name" = 'English Audio Release Groups ultimate' where "name" = 'English release groups ultimate';
-- --- END op 1948

-- --- BEGIN op 1949 ( create custom_format "ULTIMATE English Audio" )
insert into "custom_formats" ("name", "description") values ('ULTIMATE English Audio', '');
-- --- END op 1949

-- --- BEGIN op 1950 ( update custom_format "ULTIMATE English Audio" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'ULTIMATE English Audio' and "description" = '';
-- --- END op 1950

-- --- BEGIN op 1951 ( update custom_format "ULTIMATE English Audio" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('ULTIMATE English Audio', 'Anime');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('ULTIMATE English Audio', 'ultimate');
-- --- END op 1951

-- --- BEGIN op 1952 ( update custom_format "ULTIMATE English Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ULTIMATE English Audio', 'Dual Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ULTIMATE English Audio', 'Dual Audio', 'Dual Audio Anime');
-- --- END op 1952

-- --- BEGIN op 1953 ( update custom_format "ULTIMATE English Audio" )
update "custom_formats" set "description" = 'Should always be true if there is an English audio language present' where "name" = 'ULTIMATE English Audio' and "description" = 'Matches releases with both the original language as well as English.';
-- --- END op 1953

-- --- BEGIN op 1954 ( update custom_format "ULTIMATE English Audio" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'ULTIMATE English Audio'
	  AND name = 'Dual Audio'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1954

-- --- BEGIN op 1955 ( update custom_format "ULTIMATE English Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('ULTIMATE English Audio', 'English Audio Anime', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('ULTIMATE English Audio', 'English Audio Anime', 'English Audio Anime');
-- --- END op 1955

-- --- BEGIN op 1956 ( create custom_format "Dub Only Anime ultimate" )
insert into "custom_formats" ("name", "description") values ('Dub Only Anime ultimate', '');
-- --- END op 1956

-- --- BEGIN op 1957 ( update custom_format "Dub Only Anime ultimate" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'Dub Only Anime ultimate' and "description" = '';
-- --- END op 1957

-- --- BEGIN op 1958 ( update custom_format "Dub Only Anime ultimate" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dub Only Anime ultimate', 'Anime');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dub Only Anime ultimate', 'ultimate');
-- --- END op 1958

-- --- BEGIN op 1959 ( update custom_format "Dub Only Anime ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dub Only Anime ultimate', 'Dual Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dub Only Anime ultimate', 'Dual Audio', 'Dual Audio Anime');
-- --- END op 1959

-- --- BEGIN op 1960 ( update custom_format "Dub Only Anime ultimate" )
update "custom_formats" set "description" = 'to give dubbed anime different score than dual audio' where "name" = 'Dub Only Anime ultimate' and "description" = 'Matches releases with both the original language as well as English.';
-- --- END op 1960

-- --- BEGIN op 1961 ( update custom_format "Dub Only Anime ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Dub Only Anime ultimate'
	  AND name = 'Dual Audio'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1961

-- --- BEGIN op 1962 ( update custom_format "Dub Only Anime ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dub Only Anime ultimate', 'Dubbed Anime', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dub Only Anime ultimate', 'Dubbed Anime', 'Dub Only Audio Anime');
-- --- END op 1962

-- --- BEGIN op 1963 ( create custom_format "No English Audio ultimate" )
insert into "custom_formats" ("name", "description") values ('No English Audio ultimate', '');
-- --- END op 1963

-- --- BEGIN op 1964 ( update custom_format "No English Audio ultimate" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'No English Audio ultimate' and "description" = '';
-- --- END op 1964

-- --- BEGIN op 1965 ( update custom_format "No English Audio ultimate" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('No English Audio ultimate', 'Anime');

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('No English Audio ultimate', 'ultimate');
-- --- END op 1965

-- --- BEGIN op 1966 ( update custom_format "No English Audio ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No English Audio ultimate', 'Dual Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No English Audio ultimate', 'Dual Audio', 'Dual Audio Anime');
-- --- END op 1966

-- --- BEGIN op 1967 ( update custom_format "No English Audio ultimate" )
update "custom_formats" set "description" = 'Matches releases which likely don''t have English audio tracks in them.' where "name" = 'No English Audio ultimate' and "description" = 'Matches releases with both the original language as well as English.';
-- --- END op 1967

-- --- BEGIN op 1968 ( update custom_format "No English Audio ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'No English Audio ultimate'
	  AND name = 'Dual Audio'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1968

-- --- BEGIN op 1969 ( update custom_format "No English Audio ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('No English Audio ultimate', 'No English Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('No English Audio ultimate', 'No English Audio', 'Likely no English Audio Anime');
-- --- END op 1969

-- --- BEGIN op 1970 ( create custom_format "English Audio Simple Ultimate" )
insert into "custom_formats" ("name", "description") values ('English Audio Simple Ultimate', '');
-- --- END op 1970

-- --- BEGIN op 1971 ( update custom_format "English Audio Simple Ultimate" )
update "custom_formats" set "description" = 'Matches releases with both the original language as well as English.' where "name" = 'English Audio Simple Ultimate' and "description" = '';
-- --- END op 1971

-- --- BEGIN op 1972 ( update custom_format "English Audio Simple Ultimate" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('English Audio Simple Ultimate', 'Anime');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('English Audio Simple Ultimate', 'TRaSH');
-- --- END op 1972

-- --- BEGIN op 1973 ( update custom_format "English Audio Simple Ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English Audio Simple Ultimate', 'Chinese', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('English Audio Simple Ultimate', 'Chinese', 'Chinese', 0);
-- --- END op 1973

-- --- BEGIN op 1974 ( update custom_format "English Audio Simple Ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English Audio Simple Ultimate', 'Dual Audio', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('English Audio Simple Ultimate', 'Dual Audio', 'Dual Audio');
-- --- END op 1974

-- --- BEGIN op 1975 ( update custom_format "English Audio Simple Ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English Audio Simple Ultimate', 'Japanese', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('English Audio Simple Ultimate', 'Japanese', 'Japanese', 0);
-- --- END op 1975

-- --- BEGIN op 1976 ( update custom_format "English Audio Simple Ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English Audio Simple Ultimate', 'Korean', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('English Audio Simple Ultimate', 'Korean', 'Korean', 0);
-- --- END op 1976

-- --- BEGIN op 1977 ( update custom_format "English Audio Simple Ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English Audio Simple Ultimate', 'Not Single Language Only', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('English Audio Simple Ultimate', 'Not Single Language Only', 'Anime Single Language');
-- --- END op 1977

-- --- BEGIN op 1978 ( update custom_format "English Audio Simple Ultimate" )
update "custom_formats" set "description" = 'simple profile to just use the radarr sonarr language tag and verify whether it has english tag.' where "name" = 'English Audio Simple Ultimate' and "description" = 'Matches releases with both the original language as well as English.';
-- --- END op 1978

-- --- BEGIN op 1979 ( update custom_format "English Audio Simple Ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'English Audio Simple Ultimate'
	  AND name = 'Chinese'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1979

-- --- BEGIN op 1980 ( update custom_format "English Audio Simple Ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'English Audio Simple Ultimate'
	  AND name = 'Dual Audio'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 1;
-- --- END op 1980

-- --- BEGIN op 1981 ( update custom_format "English Audio Simple Ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'English Audio Simple Ultimate'
	  AND name = 'Japanese'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1981

-- --- BEGIN op 1982 ( update custom_format "English Audio Simple Ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'English Audio Simple Ultimate'
	  AND name = 'Korean'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 1982

-- --- BEGIN op 1983 ( update custom_format "English Audio Simple Ultimate" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'English Audio Simple Ultimate'
	  AND name = 'Not Single Language Only'
	  AND type = 'release_title'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 1983

-- --- BEGIN op 1984 ( update custom_format "English Audio Simple Ultimate" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('English Audio Simple Ultimate', 'English', 'language', 'all', 0, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('English Audio Simple Ultimate', 'English', 'English', 0);
-- --- END op 1984

-- --- BEGIN op 1985 ( create quality_profile "ULTIMATE English Anime 1080p" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('ULTIMATE English Anime 1080p', 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set your language preference in this profile.
- Dual Audio releases are always preferred.', 1, 0, 0, 1);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ULTIMATE English Anime 1080p', 'Anime');

insert into "tags" ("name") values ('Radarr') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ULTIMATE English Anime 1080p', 'Radarr');

insert into "tags" ("name") values ('Sonarr') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ULTIMATE English Anime 1080p', 'Sonarr');

insert into "tags" ("name") values ('TRaSH') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ULTIMATE English Anime 1080p', 'TRaSH');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('ULTIMATE English Anime 1080p', '1080p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '1080p', 'HDTV-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '1080p', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '1080p', 'WEBRip-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '1080p', 'Bluray-1080p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', NULL, '1080p', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('ULTIMATE English Anime 1080p', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '720p', 'HDTV-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '720p', 'Bluray-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('ULTIMATE English Anime 1080p', '480p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '480p', 'WEBDL-480p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '480p', 'WEBRip-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('ULTIMATE English Anime 1080p', '480p', 'Bluray-480p', 2);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', NULL, '480p', 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'DVD', NULL, 3, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'SDTV', NULL, 4, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'Bluray-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'Bluray-576p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'BR-DISK', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'CAM', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'DVD-R', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'DVDSCR', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'HDTV-2160p', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'HDTV-480p', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'Raw-HD', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'REGIONAL', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'Remux-1080p', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'Remux-2160p', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'TELECINE', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'TELESYNC', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'Unknown', NULL, 19, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'WEBDL-2160p', NULL, 20, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'WEBRip-2160p', NULL, 21, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('ULTIMATE English Anime 1080p', 'WORKPRINT', NULL, 22, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('ULTIMATE English Anime 1080p', 'Original', 'simple');
-- --- END op 1985

-- --- BEGIN op 1986 ( update quality_profile "ULTIMATE English Anime 1080p" )
update "quality_profiles" set "upgrade_until_score" = 10000 where "name" = 'ULTIMATE English Anime 1080p' and "upgrade_until_score" = 0;
-- --- END op 1986

-- --- BEGIN op 1987 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ABEMA', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'radarr'
);
-- --- END op 1987

-- --- BEGIN op 1988 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ABEMA', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ABEMA'
    AND arr_type = 'sonarr'
);
-- --- END op 1988

-- --- BEGIN op 1989 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ADN', 'radarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ADN'
    AND arr_type = 'radarr'
);
-- --- END op 1989

-- --- BEGIN op 1990 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ADN', 'sonarr', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ADN'
    AND arr_type = 'sonarr'
);
-- --- END op 1990

-- --- BEGIN op 1991 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'AMZN', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 1991

-- --- BEGIN op 1992 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'AMZN', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 1992

-- --- BEGIN op 1993 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'AV1', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 1993

-- --- BEGIN op 1994 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Accessibility', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Accessibility'
    AND arr_type = 'all'
);
-- --- END op 1994

-- --- BEGIN op 1995 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 01', 'radarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 1995

-- --- BEGIN op 1996 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 01', 'sonarr', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 1996

-- --- BEGIN op 1997 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 02', 'radarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 1997

-- --- BEGIN op 1998 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 02', 'sonarr', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 1998

-- --- BEGIN op 1999 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 03', 'radarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 1999

-- --- BEGIN op 2000 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 03', 'sonarr', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 2000

-- --- BEGIN op 2001 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 04', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 2001

-- --- BEGIN op 2002 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 04', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 2002

-- --- BEGIN op 2003 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 05', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 2003

-- --- BEGIN op 2004 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 05', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 2004

-- --- BEGIN op 2005 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 06', 'radarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'radarr'
);
-- --- END op 2005

-- --- BEGIN op 2006 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 06', 'sonarr', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 06'
    AND arr_type = 'sonarr'
);
-- --- END op 2006

-- --- BEGIN op 2007 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 07', 'radarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'radarr'
);
-- --- END op 2007

-- --- BEGIN op 2008 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 07', 'sonarr', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 07'
    AND arr_type = 'sonarr'
);
-- --- END op 2008

-- --- BEGIN op 2009 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 08', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'radarr'
);
-- --- END op 2009

-- --- BEGIN op 2010 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime BD Tier 08', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime BD Tier 08'
    AND arr_type = 'sonarr'
);
-- --- END op 2010

-- --- BEGIN op 2011 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Baseline Groups', 'radarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Baseline Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2011

-- --- BEGIN op 2012 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Baseline Groups', 'sonarr', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Baseline Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2012

-- --- BEGIN op 2013 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Dual Audio', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'radarr'
);
-- --- END op 2013

-- --- BEGIN op 2014 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Dual Audio', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 2014

-- --- BEGIN op 2015 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime LQ', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime LQ'
    AND arr_type = 'all'
);
-- --- END op 2015

-- --- BEGIN op 2016 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Raws', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Raws'
    AND arr_type = 'all'
);
-- --- END op 2016

-- --- BEGIN op 2017 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 01', 'radarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'radarr'
);
-- --- END op 2017

-- --- BEGIN op 2018 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 01', 'sonarr', 1400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 01'
    AND arr_type = 'sonarr'
);
-- --- END op 2018

-- --- BEGIN op 2019 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 02', 'radarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'radarr'
);
-- --- END op 2019

-- --- BEGIN op 2020 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 02', 'sonarr', 1300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 02'
    AND arr_type = 'sonarr'
);
-- --- END op 2020

-- --- BEGIN op 2021 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 03', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'radarr'
);
-- --- END op 2021

-- --- BEGIN op 2022 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 03', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 03'
    AND arr_type = 'sonarr'
);
-- --- END op 2022

-- --- BEGIN op 2023 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 04', 'radarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'radarr'
);
-- --- END op 2023

-- --- BEGIN op 2024 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 04', 'sonarr', 1100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 04'
    AND arr_type = 'sonarr'
);
-- --- END op 2024

-- --- BEGIN op 2025 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 05', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'radarr'
);
-- --- END op 2025

-- --- BEGIN op 2026 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 05', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 05'
    AND arr_type = 'sonarr'
);
-- --- END op 2026

-- --- BEGIN op 2027 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 6', 'radarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2027

-- --- BEGIN op 2028 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime WEB Tier 6', 'sonarr', 900
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime WEB Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2028

-- --- BEGIN op 2029 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Bad Multis', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Bad Multis'
    AND arr_type = 'sonarr'
);
-- --- END op 2029

-- --- BEGIN op 2030 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Bad Source', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Bad Source'
    AND arr_type = 'sonarr'
);
-- --- END op 2030

-- --- BEGIN op 2031 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'CR', 'radarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'radarr'
);
-- --- END op 2031

-- --- BEGIN op 2032 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'CR', 'sonarr', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'CR'
    AND arr_type = 'sonarr'
);
-- --- END op 2032

-- --- BEGIN op 2033 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'DSNP', 'radarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 2033

-- --- BEGIN op 2034 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'DSNP', 'sonarr', 5
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 2034

-- --- BEGIN op 2035 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dubs Only', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dubs Only'
    AND arr_type = 'all'
);
-- --- END op 2035

-- --- BEGIN op 2036 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dumpstarr LQ Groups', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Groups'
    AND arr_type = 'radarr'
);
-- --- END op 2036

-- --- BEGIN op 2037 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dumpstarr LQ Groups', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 2037

-- --- BEGIN op 2038 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dumpstarr LQ Title', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Title'
    AND arr_type = 'radarr'
);
-- --- END op 2038

-- --- BEGIN op 2039 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dumpstarr LQ Title', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dumpstarr LQ Title'
    AND arr_type = 'sonarr'
);
-- --- END op 2039

-- --- BEGIN op 2040 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'FUNI', 'radarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'radarr'
);
-- --- END op 2040

-- --- BEGIN op 2041 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'FUNI', 'sonarr', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'FUNI'
    AND arr_type = 'sonarr'
);
-- --- END op 2041

-- --- BEGIN op 2042 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Multi-Audio', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'all'
);
-- --- END op 2042

-- --- BEGIN op 2043 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Multi-Sub', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Multi-Sub'
    AND arr_type = 'all'
);
-- --- END op 2043

-- --- BEGIN op 2044 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'NF', 'radarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'radarr'
);
-- --- END op 2044

-- --- BEGIN op 2045 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'NF', 'sonarr', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'NF'
    AND arr_type = 'sonarr'
);
-- --- END op 2045

-- --- BEGIN op 2046 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ProRes', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'radarr'
);
-- --- END op 2046

-- --- BEGIN op 2047 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ProRes', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ProRes'
    AND arr_type = 'sonarr'
);
-- --- END op 2047

-- --- BEGIN op 2048 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Uncensored', 'all', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Uncensored'
    AND arr_type = 'all'
);
-- --- END op 2048

-- --- BEGIN op 2049 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'VOSTFR', 'all', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'VOSTFR'
    AND arr_type = 'all'
);
-- --- END op 2049

-- --- BEGIN op 2050 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'VRV', 'radarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'VRV'
    AND arr_type = 'radarr'
);
-- --- END op 2050

-- --- BEGIN op 2051 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'VRV', 'sonarr', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'VRV'
    AND arr_type = 'sonarr'
);
-- --- END op 2051

-- --- BEGIN op 2052 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'v0', 'all', -51
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'v0'
    AND arr_type = 'all'
);
-- --- END op 2052

-- --- BEGIN op 2053 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'v1', 'all', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'v1'
    AND arr_type = 'all'
);
-- --- END op 2053

-- --- BEGIN op 2054 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'v2', 'all', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'v2'
    AND arr_type = 'all'
);
-- --- END op 2054

-- --- BEGIN op 2055 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'v3', 'all', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'v3'
    AND arr_type = 'all'
);
-- --- END op 2055

-- --- BEGIN op 2056 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'v4', 'all', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'v4'
    AND arr_type = 'all'
);
-- --- END op 2056

-- --- BEGIN op 2057 ( update quality_profile "ULTIMATE English Anime 1080p" )
update "quality_profiles" set "description" = 'Personal profile that tries to strongly prefer English audio track titles. 
- prefers dual audio over dubs and than subs' where "name" = 'ULTIMATE English Anime 1080p' and "description" = 'Based on the TRaSH Guides Anime Profile, focusing on media that has Dual Audio.
- This profile will grab between a SDTV - 1080p Bluray file.
- You will be preferring Dual Audio media (ie including English along with original language). If you''d prefer to **only** have the original language (Japanese), remove the Dual Audio format and set your language preference in this profile.
- Dual Audio releases are always preferred.';
-- --- END op 2057

-- --- BEGIN op 2058 ( update quality_profile "ULTIMATE English Anime 1080p" )
DELETE FROM quality_profile_tags WHERE quality_profile_name = 'ULTIMATE English Anime 1080p' AND tag_name = 'TRaSH';

insert into "tags" ("name") values ('ultimate') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('ULTIMATE English Anime 1080p', 'ultimate');
-- --- END op 2058

-- --- BEGIN op 2059 ( update quality_profile "ULTIMATE English Anime 1080p" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = 'ULTIMATE English Anime 1080p' AND language_name = 'Original';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT 'ULTIMATE English Anime 1080p', 'English', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
);
-- --- END op 2059

-- --- BEGIN op 2060 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dubs Only', 'radarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dubs Only'
    AND arr_type = 'radarr'
);
-- --- END op 2060

-- --- BEGIN op 2061 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dubs Only', 'sonarr', -10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dubs Only'
    AND arr_type = 'sonarr'
);
-- --- END op 2061

-- --- BEGIN op 2062 ( update quality_profile "ULTIMATE English Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dubs Only'
  AND arr_type = 'all'
  AND score = -10000;
-- --- END op 2062

-- --- BEGIN op 2063 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 2063

-- --- BEGIN op 2064 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 2064

-- --- BEGIN op 2065 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 2065

-- --- BEGIN op 2066 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 2066

-- --- BEGIN op 2067 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 2067

-- --- BEGIN op 2068 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'sonarr'
  AND score = 600;
-- --- END op 2068

-- --- BEGIN op 2069 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2069

-- --- BEGIN op 2070 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2070

-- --- BEGIN op 2071 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'radarr'
  AND score = 400;
-- --- END op 2071

-- --- BEGIN op 2072 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'sonarr'
  AND score = 400;
-- --- END op 2072

-- --- BEGIN op 2073 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 2073

-- --- BEGIN op 2074 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 2074

-- --- BEGIN op 2075 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'radarr'
  AND score = 200;
-- --- END op 2075

-- --- BEGIN op 2076 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'sonarr'
  AND score = 200;
-- --- END op 2076

-- --- BEGIN op 2077 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 2077

-- --- BEGIN op 2078 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 2078

-- --- BEGIN op 2079 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 2079

-- --- BEGIN op 2080 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 2080

-- --- BEGIN op 2081 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 2081

-- --- BEGIN op 2082 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 2082

-- --- BEGIN op 2083 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 2083

-- --- BEGIN op 2084 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 2084

-- --- BEGIN op 2085 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2085

-- --- BEGIN op 2086 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 2086

-- --- BEGIN op 2087 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 2087

-- --- BEGIN op 2088 ( update quality_profile "ULTIMATE English Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dubs Only'
  AND arr_type = 'radarr'
  AND score = -10000;
-- --- END op 2088

-- --- BEGIN op 2089 ( update quality_profile "ULTIMATE English Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Dubs Only'
  AND arr_type = 'sonarr'
  AND score = -10000;
-- --- END op 2089

-- --- BEGIN op 2090 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'radarr'
  AND score = 100;
-- --- END op 2090

-- --- BEGIN op 2091 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'sonarr'
  AND score = 100;
-- --- END op 2091

-- --- BEGIN op 2092 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'radarr'
  AND score = 1400;
-- --- END op 2092

-- --- BEGIN op 2093 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 01'
  AND arr_type = 'sonarr'
  AND score = 1400;
-- --- END op 2093

-- --- BEGIN op 2094 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'radarr'
  AND score = 1300;
-- --- END op 2094

-- --- BEGIN op 2095 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 02'
  AND arr_type = 'sonarr'
  AND score = 1300;
-- --- END op 2095

-- --- BEGIN op 2096 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'radarr'
  AND score = 1200;
-- --- END op 2096

-- --- BEGIN op 2097 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1600
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 03'
  AND arr_type = 'sonarr'
  AND score = 1200;
-- --- END op 2097

-- --- BEGIN op 2098 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'radarr'
  AND score = 1100;
-- --- END op 2098

-- --- BEGIN op 2099 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1500
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 04'
  AND arr_type = 'sonarr'
  AND score = 1100;
-- --- END op 2099

-- --- BEGIN op 2100 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2100

-- --- BEGIN op 2101 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2101

-- --- BEGIN op 2102 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'radarr'
  AND score = 900;
-- --- END op 2102

-- --- BEGIN op 2103 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1300
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 06'
  AND arr_type = 'sonarr'
  AND score = 900;
-- --- END op 2103

-- --- BEGIN op 2104 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 2104

-- --- BEGIN op 2105 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1200
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 07'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 2105

-- --- BEGIN op 2106 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 2106

-- --- BEGIN op 2107 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1100
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime BD Tier 08'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 2107

-- --- BEGIN op 2108 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1000
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 800;
-- --- END op 2108

-- --- BEGIN op 2109 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2109

-- --- BEGIN op 2110 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 900
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 01'
  AND arr_type = 'sonarr'
  AND score = 800;
-- --- END op 2110

-- --- BEGIN op 2111 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'radarr'
  AND score = 700;
-- --- END op 2111

-- --- BEGIN op 2112 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 800
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 02'
  AND arr_type = 'sonarr'
  AND score = 700;
-- --- END op 2112

-- --- BEGIN op 2113 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'radarr'
  AND score = 600;
-- --- END op 2113

-- --- BEGIN op 2114 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 700
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 03'
  AND arr_type = 'sonarr'
  AND score = 600;
-- --- END op 2114

-- --- BEGIN op 2115 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'radarr'
  AND score = 500;
-- --- END op 2115

-- --- BEGIN op 2116 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 600
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 04'
  AND arr_type = 'sonarr'
  AND score = 500;
-- --- END op 2116

-- --- BEGIN op 2117 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'radarr'
  AND score = 400;
-- --- END op 2117

-- --- BEGIN op 2118 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 500
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 05'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2118

-- --- BEGIN op 2119 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'radarr'
  AND score = 300;
-- --- END op 2119

-- --- BEGIN op 2120 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 400
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Anime WEB Tier 6'
  AND arr_type = 'sonarr'
  AND score = 300;
-- --- END op 2120

-- --- BEGIN op 2121 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Multi-Audio', 'radarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'radarr'
);
-- --- END op 2121

-- --- BEGIN op 2122 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Multi-Audio', 'sonarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Multi-Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 2122

-- --- BEGIN op 2123 ( update quality_profile "ULTIMATE English Anime 1080p" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Multi-Audio'
  AND arr_type = 'all'
  AND score = 101;
-- --- END op 2123

-- --- BEGIN op 2124 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Multi-Audio'
  AND arr_type = 'radarr'
  AND score = 101;
-- --- END op 2124

-- --- BEGIN op 2125 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = 1001
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'Multi-Audio'
  AND arr_type = 'sonarr'
  AND score = 101;
-- --- END op 2125

-- --- BEGIN op 2126 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Dual Audio ultimate', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio ultimate'
    AND arr_type = 'radarr'
);
-- --- END op 2126

-- --- BEGIN op 2127 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Anime Dual Audio ultimate', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Anime Dual Audio ultimate'
    AND arr_type = 'sonarr'
);
-- --- END op 2127

-- --- BEGIN op 2128 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dub Only Anime ultimate', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dub Only Anime ultimate'
    AND arr_type = 'radarr'
);
-- --- END op 2128

-- --- BEGIN op 2129 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'Dub Only Anime ultimate', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'Dub Only Anime ultimate'
    AND arr_type = 'sonarr'
);
-- --- END op 2129

-- --- BEGIN op 2130 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'English Audio Release Groups ultimate', 'radarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'English Audio Release Groups ultimate'
    AND arr_type = 'radarr'
);
-- --- END op 2130

-- --- BEGIN op 2131 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'English Audio Release Groups ultimate', 'sonarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'English Audio Release Groups ultimate'
    AND arr_type = 'sonarr'
);
-- --- END op 2131

-- --- BEGIN op 2132 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'English Audio Simple Ultimate', 'radarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'English Audio Simple Ultimate'
    AND arr_type = 'radarr'
);
-- --- END op 2132

-- --- BEGIN op 2133 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'English Audio Simple Ultimate', 'sonarr', 101
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'English Audio Simple Ultimate'
    AND arr_type = 'sonarr'
);
-- --- END op 2133

-- --- BEGIN op 2134 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'No English Audio ultimate', 'radarr', -10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'No English Audio ultimate'
    AND arr_type = 'radarr'
);
-- --- END op 2134

-- --- BEGIN op 2135 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'No English Audio ultimate', 'sonarr', -10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'No English Audio ultimate'
    AND arr_type = 'sonarr'
);
-- --- END op 2135

-- --- BEGIN op 2136 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ULTIMATE English Audio', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ULTIMATE English Audio'
    AND arr_type = 'radarr'
);
-- --- END op 2136

-- --- BEGIN op 2137 ( update quality_profile "ULTIMATE English Anime 1080p" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT 'ULTIMATE English Anime 1080p', 'ULTIMATE English Audio', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
    AND custom_format_name = 'ULTIMATE English Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 2137

-- --- BEGIN op 2138 ( update quality_profile "ULTIMATE English Anime 1080p" )
update "quality_profiles" set "upgrade_until_score" = 60000 where "name" = 'ULTIMATE English Anime 1080p' and "upgrade_until_score" = 10000;
-- --- END op 2138

-- --- BEGIN op 2139 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = -1
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'No English Audio ultimate'
  AND arr_type = 'radarr'
  AND score = -10;
-- --- END op 2139

-- --- BEGIN op 2140 ( update quality_profile "ULTIMATE English Anime 1080p" )
UPDATE quality_profile_custom_formats
SET score = -1
WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND custom_format_name = 'No English Audio ultimate'
  AND arr_type = 'sonarr'
  AND score = -10;
-- --- END op 2140

-- --- BEGIN op 2141 ( update quality_profile "ULTIMATE English Anime 1080p" )
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
      AND quality_name NOT IN ('HDTV-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Bluray-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = 'ULTIMATE English Anime 1080p'
  AND quality_group_name = '1080p'
        AND NOT (
          (quality_name = 'HDTV-1080p'
        AND position = 0)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 2)
      OR (quality_name = 'Bluray-1080p'
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
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT 'ULTIMATE English Anime 1080p' AS quality_profile_name, '1080p' AS quality_group_name, 'HDTV-1080p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2141
