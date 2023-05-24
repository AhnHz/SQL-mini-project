
/* 데이터 개수 확인 
select count(*)
from customer_info c

        full outer join
        order_info o on c.회원번호 = o.회원번호
        
            full outer join
            pay_info p on o.주문번호 = p.주문번호 */
            

               
select *
from customer_info c

        full outer join
        order_info o on c.회원번호 = o.주문_회원번호
        
            full outer join
            pay_info p on o.주문번호 = p.결제_주문번호
where rownum < 51;
            



create table join_cop
as (
select c.*, o.*, p.*

from customer_info c

        full outer join
        order_info o on c.회원번호 = o.주문_회원번호
        
            full outer join
            pay_info p on o.주문번호 = p.결제_주문번호);


/* 데이터 개수 확인
select count(*)
from join_cop; */
