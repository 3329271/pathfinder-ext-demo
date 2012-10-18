---
layout: integration
title: Модель данных "Удостоверение личности"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID удостоверения личности | |
| persond_id | String | | Да | Уникальный ID физического лица | |
| type | String | | Да | Тип документа удостоверяющего личность | |
| number | String | max 6 | Да | Номер документа | |
| series | String |  | Да | Серия документа | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| birth_date | Date | | Да | Дата рождения | |
| issuer | String | | Да | Кем выдан | |
| issuer_date | Date | Да | Когда выдан | |

##Представление объекта в виде XML:

{% highlight xml %}
<identity card>
  <id>5</id>
  <type>Неизвестный документ удостоверяющий личность</type>
  <person_id>5</person_id>
  <number>700001</number>
  <series>VII-АП</serie>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <birth_date>2012-12-30</birth_date>
  <issuer>ОВБ района области/issuer>
  <issuer_date>2012-12-30</issuer_date>
</identity card>
{% endhighlight %}












