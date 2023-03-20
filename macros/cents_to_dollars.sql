{% macro cents_to_dollars(amount) -%}
    ({{ amount }} / 100)
{% endmacro %}
