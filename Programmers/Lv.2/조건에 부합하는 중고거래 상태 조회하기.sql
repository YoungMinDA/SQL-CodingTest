-- 2022년 10월 5일 등록
-- 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태 조회
-- sale -> 판매중, reserved -> 예약중, Done 거래완료
-- 게시글 ID 내림차순 desc;

SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
        CASE
        WHEN STATUS = 'SALE' THEN '판매중'
        WHEN STATUS = 'RESERVED' THEN '예약중'
        ELSE '거래완료' END AS '거래완료'
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY BOARD_ID DESC;