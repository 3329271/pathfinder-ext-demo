---
layout: integration
title: Модель данных "Свидетельство о рождении"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID СВИДЕТЕЛЬСТВО О РОЖДЕНИИ | |
|persond_id | Integer | | Да | Уникальный ID физического лица | |
| type | ClassifierValue | | Да | Тип документа удостоверяющего личность | |
| number | String | max 6 | Да | Номер документа | |
| series | String | | Да | Серия документа | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| birth_date | Date | | Да | Дата рождения | |
| birth_place | String | | Да | Место рождения | |
| record_date | Date | | Да | Дата записи | |
| record_number | Integer | | Да | номер записи акта о рождении | |
| father_first_name | String | | Да | Имя отца физического лица | |
| father_last_name | String | | Да | Фамилия отца физического лица | |
| father_middle_name | String | | Да | Отчество отца физического лица | |
| father_citizenship | ClassifierValue | | Да | Гражданство отца | |
| father_nationality | ClassifierValue | | Да | Национальность отца | |
| mother_first_name | String | | Да | Имя матери физического лица | |
| mother_last_name | String | | Да | Фамилия матери физического лица | |
| mother_middle_name | String | | Да | Отчество матери физического лица | |
| mother_citizenship | ClassifierValue | | Да | Гражданство матери | |
| mother_nationality | ClassifierValue | | Да | Национальность матери | |
| issuer | String | | Да | Кем выдан | |
| issue_date | Date | | Да | Дата выдачи | |

##Представление объекта в виде XML:

{% highlight xml %}
<birth_certificate>
  <id>5</id>
  <person_id>5</person_id>
  <type>
    <code>СР</code>
    <title>СВИДЕТЕЛЬСТВО О РОЖДЕНИИ</title>
  </type>
  <series>I-CH</serie>
  <number>700001</number>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <birth_date>2012-12-12</birth_date>
  <birth_place>г. Липецк</birth_place>
  <record_date>1949-12-30</record_date>
  <record_number>1234</record_number>
  <father_first_name>Василий</father_first_name>
  <father_last_name>Иванов</father_last_name>
  <father_middle_name>Евгеньевич</father_middle_name>
  <father_citizenship>
    <code>RU</code>
    <title>гражданин РФ</title>
  </father_citizenship>
  <father_nationality>
    <code>RU</code>
    <title>русский</title>
  </father_nationality>
  <mother_first_name>Ольга</mother_first_name>
  <mother_last_name>Иванова</mother_last_name>
  <mother_middle_name>Александровна</mother_middle_name>
  <mother_citizenship>
    <code>RU</code>
    <title>гражданка РФ</title>
  </mother_citizenship>
  <mother_nationality>
    <code>RU</code>
    <title>русская</title>
  </mother_nationality>
  <issuer>ЗАГС г.Москвы</issuer>
  <issue_date>1949-04-30</issue_date>
</birth_certificate>
{% endhighlight %}












