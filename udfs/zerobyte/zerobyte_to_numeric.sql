CREATE OR REPLACE FUNCTION
  zerobyte.ZEROBYTE_TO_NUMERIC(a ARRAY<STRUCT<_ ARRAY<STRUCT<STRUCT<INT64>>>>>) AS (CAST(zerobyte.ZEROBYTE_TO_STRING(a) AS NUMERIC))