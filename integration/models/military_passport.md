---
layout: integration
title: Модель данных "Военный билет"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID Военный билет | |
| persond_id | Integer | | Да | Уникальный ID физического лица | |
| type | ClassifierValue | | Да | Тип документа удостоверяющего личность | |
| number | String | max 7 | Да | Номер документа | |
| series | String | max 4 | Да | Серия документа | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| birth_date | Date | | Да | Дата рождения | |
| issuer | String | | Да | Кем выдан | |
| issue_date | Date | | Да | Дата выдачи | |

##Представление объекта в виде XML:

{% highlight xml %}
<military_passport>
  <id>5</id>
  <person_id>5</person_id>
  <type>
    <code>ВБ</code>
    <title>Военный билет</title>
  </type>
  <series>7001</serie>
  <number>9000001</number>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <birth_date>1965-03-10</birth_date>
  <issuer>автозаводского района</issuer>
  <issue_date>2001-05-11</issue_date>
</military_passport>
{% endhighlight %}












