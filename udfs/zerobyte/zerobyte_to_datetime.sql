CREATE OR REPLACE FUNCTION zerobyte.ZEROBYTE_TO_DATETIME(a ARRAY< STRUCT< _ STRUCT< INT64 > > >)
AS (
  DATETIME_ADD('1970-01-01', INTERVAL zerobyte.ZEROBYTE_TO_INT64(a) MICROSECOND)
);
