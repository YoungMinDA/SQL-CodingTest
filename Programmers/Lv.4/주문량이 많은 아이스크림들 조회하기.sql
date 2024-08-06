-- 아이스크림 총 주문량 & 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 
-- 상위 3개의 맛을 조회
-- 코드를 입력하세요

WITH temp1 AS (
SELECT 
    F.FLAVOR
    , SUM(F.TOTAL_ORDER + J.TOTAL_ORDER) AS TOTAL_ORDER
FROM
    FIRST_HALF F
JOIN
    JULY J ON F.FLAVOR = J.FLAVOR
GROUP BY F.FLAVOR
ORDER BY 2 DESC
LIMIT 3
)

SELECT 
    FLAVOR
FROM
    temp1