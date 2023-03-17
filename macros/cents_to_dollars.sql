{% macro cents_to_doallars(amount) -%}
    ({{ amount }} / 100)
{% endmacro %}
