---
layout: integration
title: Модель данных "pages"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| current_page | Integer | | Да | Номер текущей страницы | |
| total_pages | Integer | | Да | Общее количество страниц | |
| total_objects | Integer | | Да | Общее количество найденных записей  | |

##Представление объекта в виде XML:

{% highlight xml %}
<pages>
    <current_page>…</current_page>
    <total_pages>…</total_pages>
    <total_objects>…</total_objects>
</pages>
{% endhighlight %}
