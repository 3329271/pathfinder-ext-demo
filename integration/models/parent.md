---
layout: integration
title: Модель данных "Сведения о родителе"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| first_name | String | | Да | Имя отца физического лица | |
| last_name | String | | Да | Фамилия отца физического лица | |
| middle_name | String | | Да | Отчество отца физического лица | |
| citizenship | ClassifierValue | | Да | Гражданство отца | |
| nationality | ClassifierValue | | Да | Национальность отца | |

##Представление объекта в виде XML:

{% highlight xml %}
<parent>
  <first_name>Ольга</first_name>
  <last_name>Иванова</last_name>
  <middle_name>Александровна</middle_name>
  <citizenship>
    <code>RU</code>
    <title>гражданка РФ</title>
  </citizenship>
  <nationality>
    <code>RU</code>
    <title>русская</title>
  </nationality>
</parent>
{% endhighlight %}












