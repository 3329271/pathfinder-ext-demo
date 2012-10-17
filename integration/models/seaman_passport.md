---
layout: integration
title: Модель данных "Паспорт моряка"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID моряка | |
| persond_id | Integer | | Да | Уникальный ID физического лица | |
| type | ClassifierValue | | Да | Тип документа удостоверяющего личность | |
| issuer_state | String | строго 3 | Да | Код государства выдачи |  |
| series | String | max 2 | Да | Серия документа | |
| number | String | max 7 | Да | Номер документа | |
| issue_date | Date | | Да | Дата выдачи | |
| issuer | String | | Да | Кем выдан | |
| exp_date | Date | | Да | Дата окончания срока действия | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| birth_date | Date | | Да | Дата рождения | |
| birth_place | String | | Да | Место рождения | |
| birth_place_latin | String | | Да | Место рождения латиницей | |
| nationality | ClassifierValue | | Да | Гражданство | |

##Представление объекта в виде XML:

{% highlight xml %}
<seaman_passport>
  <id>5</id>
  <person_id>5</person_id>
  <type>
    <code>ПМ</code>
    <title>Паспорт моряка</title>
  </type>
  <series>АХ</serie>
  <number>7000001</number>
  <issue_date>2012-12-12</issue_date>
  <issuer>ГА МРП Калининград</issuer>
  <exp_date>2013-05-11</exp_date>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <birth_date>1965-03-10</birth_date>
  <birth_place>г. Липецк</birth_place>
  <birth_place_latin>Lipetsk</birth_place_latin>
  <nationality>
    <code>RU</code>
    <title>Российская Федерация/Russian Federation</title>
  </nationality>
</seaman_passport>
{% endhighlight %}












