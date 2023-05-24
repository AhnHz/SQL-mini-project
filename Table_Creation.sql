

CREATE TABLE customer_info
        (회원번호 char(20) CONSTRAINT PK_customer PRIMARY KEY, 	
         회원등급 VARCHAR2(20), 								
         가입일  date,  								
         최종방문일   date, 									
         본인인증 varchar2(20), 									
         성별 char(5), 									
         나이 varchar2(5), 									
         배송지_도로명 varchar2(200),
         배송지_지번 varchar2(200));
         
DESC customer_info;



CREATE TABLE item_info
        (상품번호 char(20) CONSTRAINT PK_item PRIMARY KEY, 	
         상품명 VARCHAR2(300), 								
         업체명  VARCHAR2(50),  								
         카테고리명   VARCHAR2(100), 									
         브랜드명 varchar2(50), 									
         상품구분 varchar2(20), 									
         대표판매가 number(10), 									
         배송비 varchar2(50),
         판매상태 varchar2(20),
         전시상태 varchar2(20));
         
DESC item_info;



CREATE TABLE order_info 
        (주문번호 char(20),
         순번 number(5), 								
         주문일시  date,  								
         진행구분   VARCHAR2(20), 									
         배송지 varchar2(100), 									
         상품번호 char(20), 									
         상품명 varchar2(300), 									
         옵션명 varchar2(300),
         수량 number(5),
         판매가 number(10),
         배송비 number(10),
         쿠폰할인액 number(10),
         회원주문여부 varchar2(20),
         회원번호 char(20));
         
DESC order_info;



CREATE TABLE pay_info
        (주문번호 char(20), 	
         결제번호 char(20) CONSTRAINT PK_pay PRIMARY KEY,					
         결제일시  date,  								
         진행구분명   VARCHAR2(20), 									
         결제수단 varchar2(50), 									
         결제금액 number(10), 									
         카드사 varchar2(50), 									
         할부개월 varchar2(2));
         
DESC pay_info;



CREATE TABLE refund_info
        (주문번호 char(20), 	
         환불번호 char(20) CONSTRAINT PK_refund PRIMARY KEY, 							  								
         진행구분   VARCHAR2(20), 									
         결제수단 varchar2(50), 									
         환불금액 number(10), 
         할부개월 varchar2(2),
         환불일자 date);
         
DESC refund_info;


alter table order_info rename column 회원번호 to 주문_회원번호;
alter table pay_info rename column 주문번호 to 결제_주문번호;


/* 데이터 확인
select * from (
    select * from customer_info order by DBMS_RANDOM.RANDOM
)
where rownum <= 5; */
