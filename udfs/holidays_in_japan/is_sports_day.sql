-- スポーツの日
CREATE OR REPLACE FUNCTION holidays_in_japan.IS_SPORTS_DAY(d DATE)
AS (
  d = "2020-07-24" OR d = "2021-07-23" OR "2022-01-01" <= d AND EXTRACT(MONTH FROM d) = 10 AND EXTRACT(DAYOFWEEK FROM d) =
  2 AND EXTRACT(DAY FROM d) BETWEEN 8 AND 14
);