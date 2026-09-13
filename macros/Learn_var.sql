{% macro learn_var(myname) %}
   {{log("My name is " ~ var("myname"), info=True)}}

{% endmacro %}