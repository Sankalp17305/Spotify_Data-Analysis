-- ========================================
-- Row count check
-- ========================================


SELECT COUNT(*) AS total_rows
FROM spotify_analysis.tracks;


-- ========================================
-- Key Null Check
-- ========================================


SELECT
  COUNTIF(popularity IS NULL) AS popularity_nulls,
  COUNTIF(genre IS NULL) AS genre_nulls,
  COUNTIF(release_year IS NULL) AS year_nulls
FROM spotify_analysis.tracks;


-- ========================================
-- Popularity Trend Over Time
-- ========================================


SELECT
  release_year,
  ROUND(AVG(popularity), 2) AS avg_popularity
FROM spotify_analysis.tracks
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year;


-- ========================================
-- Major vs Minor (Mode)
-- ========================================


SELECT
  mode,
  ROUND(AVG(popularity), 2) AS avg_popularity,
  COUNT(*) AS total_tracks
FROM spotify_analysis.tracks
GROUP BY mode;


-- ========================================
-- Top 10 Artists Per Year
-- ========================================

WITH artist_year AS (
  SELECT
    release_year,
    artist_name,
    SUM(popularity) AS total_popularity,
    COUNT(*) AS track_count
  FROM spotify_analysis.tracks
  WHERE release_year IS NOT NULL
  GROUP BY release_year, artist_name
)

SELECT
  release_year,
  artist_name,
  total_popularity,
  track_count,
  ROW_NUMBER() OVER (
    PARTITION BY release_year
    ORDER BY total_popularity DESC
  ) AS artist_rank
FROM artist_year
QUALIFY artist_rank <= 10
ORDER BY release_year, artist_rank;


-- ========================================
-- Top 10 Genres by Popularity
-- ========================================


SELECT
  genre,
  ROUND(AVG(popularity), 2) AS avg_popularity,
  COUNT(*) AS total_tracks
FROM spotify_analysis.tracks
GROUP BY genre
HAVING COUNT(*) > 50
ORDER BY avg_popularity DESC
LIMIT 10;


