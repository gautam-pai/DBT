{% macro Add_Mill(column_name) %}
    CAST({{column_name}} AS float)*1000000
    
{% endmacro %}