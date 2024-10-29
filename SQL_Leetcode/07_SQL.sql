--Product Sales Analysis I
select sales.year, sales.price, product.product_name from sales , product
where sales.product_id = product.product_id