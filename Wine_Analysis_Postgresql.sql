select*from "Wine";

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'Wine';

--First analysis: Price Segment Analysis
SELECT 
    price_segment,
    COUNT(*) AS total_wines,
    AVG(points) AS avg_rating,
    AVG(price) AS avg_price,
    AVG(value_score) AS avg_value_score
FROM "Wine"
GROUP BY price_segment
ORDER BY avg_price desc;

-- 1. Does higher price guarantee better quality?
--Premium wines have the highest rating (91.35) but also the highest price ($88.73).
-- Low-priced wines provide the best value (4.97) but much better value (4.97).
--Therefore, higher price generally means higher quality,but it does not guarantee better value or quality.
-- Low segment has the largest number of wines (82,451)

-- Secound analysis: Region-wise Performance
SELECT 
    province,
    COUNT(*) AS total_wines,
    AVG(points) AS avg_rating,
    AVG(price) AS avg_price
FROM "Wine"
GROUP BY province
HAVING COUNT(*) >= 50
ORDER BY avg_rating DESC;

--Q2. Which regions consistently produce high-rated wines?
-- The top high-rated regions with at least 50 wines included:
-- Wachau → 91.62
-- England → 91.58
-- Kamptal → 91.45
-- Rheingau → 90.98
-- Kremstal → 90.87
-- Wagram → 90.75

-- What this tells us
-- California has by far the largest representation in the dataset, with 36,247 wines.

-- Third analysis: Variety-wise Performance
SELECT 
    variety,
    COUNT(*) AS total_wines,
    AVG(points) AS avg_rating,
    AVG(price) AS avg_price
FROM "Wine"
GROUP BY variety
HAVING COUNT(*) >= 50
ORDER BY avg_rating DESC;

-- Most common varieties
SELECT 
    variety,
    COUNT(*) AS total_wines
FROM "Wine"
GROUP BY variety
ORDER BY total_wines DESC

--Which varieties offer the best value.
SELECT 
    variety,
    COUNT(*) AS total_wines,
    AVG(points) AS avg_rating,
    AVG(price) AS avg_price,
    AVG(value_score) AS avg_value_score
FROM "Wine"
GROUP BY variety
HAVING COUNT(*) >= 50
ORDER BY avg_value_score DESC
LIMIT 10;

--Q3 Which wine varieties offer the best value?
-- Rosado offers the best value with a value score of 6.80.
-- Viura also provides strong value score at 6.72.
-- Portuguese White stands out with 1,159 wines and a 6.42 value score.
-- Most top-value varieties are affordable ($13–$18).
-- Garnacha is more expensive, lowering its value score.

-- Fourth analysis:overpriced or underpriced products
SELECT 
    variety,
    points,
    price,
    value_score
FROM "Wine"
WHERE points >= 90
ORDER BY value_score DESC
LIMIT 10;
 
-- Overpriced
SELECT 
    variety,
    points,
    price,
    value_score
FROM "Wine"
WHERE points < 85
  AND price > 50
ORDER BY price DESC
LIMIT 10;

-- 4. Overpriced or Underpriced Products?
-- Potentially underpriced wines:
-- Portuguese Red — 91 points at $7
-- Riesling — 91 points at $8
-- Chardonnay — 90 points at $8
-- Portuguese White — 90 points at $8

-- These are potentially overpriced wines because they have:
-- Tempranillo Blend — 83 points at $225
-- Cabernet Sauvignon — 84 points at $225
-- Champagne Blend — 84 points at $200
-- Bordeaux-style Red Blend — 84 points at $150
-- Cabernet Blend — 84 points at $135
-- These wines may be overpriced because they are expensive but have a lower rating.
-- Some wines appear potentially overpriced because they have relatively low ratings but very high prices.

-- Fifth analysis:
SELECT 
    price_segment,
    AVG(value_score) AS avg_value_score
FROM "Wine"
GROUP BY price_segment

-- 5. Which price segment should the business focus on for growth?
-- Low: 82,451 wines — Value Score 4.97
-- Medium: 27,746 wines — Value Score 2.25
-- Premium: 19,774 wines — Avg Rating 91.3

-- The business should primarily focus on the Low-price segment for growth,
-- because it has the largest wine volume (82,451) and the highest Value Score (4.97),
-- indicating strong value for customers.The Medium segment can support balanced growth,
-- while the Premium segment should be maintained for high-quality positioning .
-- because it has the highest average rating (91.3).
