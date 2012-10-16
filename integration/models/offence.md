---
layout: integration
title: Модель данных "Правонарушение"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID роли человека в правонарушении | |
| role | ClassifierValue | | Да | Категория учета | |
| [offence]({{site.baseurl}}/integration/models/offence.html) | ReferenceValue | | Да | Правонарушение | |


##Представление объекта в виде XML:

{% highlight xml %}
<offence>
  <!-- Идентификатор во внешней системе -->
  <id>123</id>
  <!-- Код вида участия в правонарушении -->
  <role>
    <code>1</code>
    <title>Категория 1</title>
  </role>
  <!-- Правонарушение -->
  <offence>
    <!-- Идентификатор правонарушения -->
    <id>1</id>
  </offence>
</offence>
{% endhighlight %}