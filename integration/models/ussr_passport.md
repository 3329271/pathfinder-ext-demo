---
layout: integration
title: Модель данных "Паспорт гражданина СССР"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID паспорта гражданина СССР | |
| persond_id | Integer | | Да | Уникальный ID физического лица | |
| type | ClassifierValue | | Да | Тип документа удостоверяющего личность | |
| series | String |  | Да | Серия документа | |
| number | String | max 6 | Да | Номер документа | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| birth_date | Date | | Да | Дата рождения | |
| birth_place | String | | Да | Место рождения | |
| nationality | ClassifierValue | | Да | национальность | |
| issuer | String | | Да | Кем выдан | |
| issue_date | Date | | Да | Дата выдачи | |

##Представление объекта в виде XML:

{% highlight xml %}
<ussr_passport>
  <id>5</id>
  <person_id>5</person_id>
  <type>
    <code>ПС</code>
    <title>Паспорт СССР</title>
  </type>
  <number>700001</number>
  <series>VII-АП</serie>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <birth_date>2012-12-12</birth_date>
  <birth_place>г. Липецк</birth_place>
  <nationality>
    <code>RU</code>
    <title>Русский</title>
  </nationality>
  <issuer>ОВБ района области</issuer>
  <issue_date>2012-12-12</issue_date>
</ussr_passport>
{% endhighlight %}












