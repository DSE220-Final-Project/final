select * from panels_stores_products_8_11

select distinct iri_key, _type, week, LPAD(cast(sy as text),2,'0')||''|| cast(ge as text) || '' ||LPAD(cast(vend as text),5,'0') || '' || LPAD(cast(item as text),5,'0') as upc2, pr
from transactions
where cast(iri_key as int) in (select distinct cast(iri_key as int) from panels_stores_products_8_11 )
and pr = 1