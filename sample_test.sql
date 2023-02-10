select
	*
from
	orderdetails od
    left outer join products p on(p.productCode = od.productCode)
    left outer join orders o on(o.orderNumber = od.orderNumber)
    left outer join customers c on(c.customerNumber = o.customerNumber);
    
/*
	customerName = Corporate Gift Ideas Co.
    이 고객이 주문한 상품의 총 개수
    
*/

select
	count(*),
    c.customerNumber,
    c.customerName
from
	customers c
    left outer join orders o on(o.customerNumber = c.customerNumber)
    left outer join orderdetails od on(od.orderNumber = o.orderNumber)
group by
	c.customerNumber,
    c.customerName;
    
select
	count(*) as orderCount,
    c.customerNumber,
    c.customerName
from
	customers c
    left outer join orders o on(o.customerNumber = c.customerNumber)
group by
	c.customerNumber,
    c.customerName;