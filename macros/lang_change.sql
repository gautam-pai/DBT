
{% macro lang_change(column_name) %}
    CASE {{column_name}}
        WHEN 'en' THEN 'English'
        WHEN 'fr' THEN 'French'
        WHEN 'hi' THEN 'Hindi'
    ELSE 'Other'
    END 
{% endmacro %}