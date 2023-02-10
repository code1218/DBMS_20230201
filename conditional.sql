select
	book_id,
    book_name,
    author_id,
    publisher_id,
    publication_date,
    if(book_price = 0, '영', '영아님') as book_price_ko,
    case 
		when book_price = 0 then '영입니다.'
        when book_price > 40000 then '4만원대'
        when book_price > 30000 then '3만원대'
        when book_price > 20000 then '2만원대'
        when book_price > 10000 then '1만원대'
        else '천원대'
    end as book_price_range, 
    ifnull(publication_date, '') as publication_date2,
    nullif(publication_date, '2010-11-08') as publication_date3,
    like_count
from
	book_mst;
    
update
	book_mst
set
	publication_date = null
where
	publication_date = '2011-12-30';