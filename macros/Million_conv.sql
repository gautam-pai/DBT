{% macro Million_conv(column_name) %}
    CASE {{column_name}}
        WHEN '******' THEN '0'
        
    ELSE replace({{column_name}},'M','0')
    END 
{% endmacro %}