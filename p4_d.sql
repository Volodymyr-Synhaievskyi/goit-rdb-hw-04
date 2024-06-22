SELECT 
    categories.name AS category_name,
    COUNT(*) AS row_quantity,
    AVG(order_details.quantity) AS avg_quantity
FROM
    order_details
        LEFT JOIN
    orders ON order_details.order_id = orders.id
        LEFT JOIN
    products ON order_details.product_id = products.id
        LEFT JOIN
    customers ON orders.customer_id = customers.id
        LEFT JOIN
    employees ON orders.employee_id = employees.employee_id
        LEFT JOIN
    shippers ON orders.shipper_id = shippers.id
        LEFT JOIN
    suppliers ON products.supplier_id = suppliers.id
        LEFT JOIN
    categories ON products.category_id = categories.id
WHERE
    employees.employee_id > 3
        AND employees.employee_id <= 10
GROUP BY categories.name