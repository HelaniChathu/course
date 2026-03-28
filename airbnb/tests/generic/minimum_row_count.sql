{% test minimum_row_count(model, minimum_row_count)%}
    SELECT 
        COUNT(*) AS cnt
    FROM 
        {{model}}
    HAVING 
        COUNT(*) < {{minimum_row_count}}

{% endtest %}