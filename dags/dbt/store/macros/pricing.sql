{% macro calcul_promo(prix,promo,scale="2") %}
    ({{prix}} * (1 - {{promo}})::decimal(10,{{scale}}))
{% endmacro %}