CREATE OR REPLACE FUNCTION
  zerobyte.ZEROBYTE_TO_ARRAY_NUMERIC(a ARRAY<STRUCT<_ ARRAY<STRUCT<ARRAY<STRUCT<STRUCT<INT64>>>>>>>)AS(ARRAY(
    SELECT
      zerobyte.ZEROBYTE_TO_NUMERIC(_)
    FROM
      UNNEST(a)
    WITH
    OFFSET
      AS o
    ORDER BY
      o))
