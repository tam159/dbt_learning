{% macro limit_data_in_dev(column_name, dev_days_of_data=5) -%}
    {%- if target.name == 'dev' -%}
        where {{ column_name }} >= date_sub(current_date(), interval {{ dev_days_of_data }} day)
    {% endif %}
{%- endmacro %}