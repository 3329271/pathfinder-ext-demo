---
layout: integration
title: Модель данных "Свидетельство о рождении"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID СВИДЕТЕЛЬСТВО О РОЖДЕНИИ | |
|persond_id | String | | Да | Уникальный ID физического лица | |
| number | String | max 6 | Да | Номер документа | |
| series | String | | Да | Серия документа | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| birth_date | Date | | Да | Дата рождения | |
| birth_place | String | | Да | Место рождения | |
| record_date | Date | | Да | Дата записи | |
| record_number | String | | Да | номер записи акта о рождении | |
| [father]({{site.baseurl}}/integration/models/parent.html) | Object | | Да | Информация о родителе | |
| [mother]({{site.baseurl}}/integration/models/parent.html) | Object | | Да | Информация о родителе | |
| issuer | String | | Да | Кем выдан | |
| issue_date | Date | | Да | Дата выдачи | |

##Представление объекта в виде XML:

{% highlight xml %}
<birth_certificate>
  <id>5</id>
  <person_id>5</person_id>
  <series>I-CH</serie>
  <number>700001</number>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <birth_date>2012-12-12</birth_date>
  <birth_place>г. Липецк</birth_place>
  <record_date>1949-12-30</record_date>
  <record_number>1234</record_number>
  <!-- Информация о родителе -->
  <father>
    <first_name>Василий</first_name>
    <last_name>Иванов</last_name>
    <middle_name>Евгеньевич</middle_name>
    <citizenship>
      <code>RU</code>
      <title>гражданин РФ</title>
    </citizenship>
    <nationality>
      <code>RU</code>
      <title>русский</title>
    </nationality>
  </father>
  <!-- Информация о родителе -->
  <mother>
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
  </mother>
  <issuer>ЗАГС г.Москвы</issuer>
  <issue_date>1949-04-30</issue_date>
</birth_certificate>
{% endhighlight %}












