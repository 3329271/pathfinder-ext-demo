---
layout: integration
title: Модель данных "Военный билет"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID Военный билет | |
| persond_id | String | | Да | Уникальный ID физического лица | |
| series | String | max 4 | Да | Серия документа | |
| number | String | max 7 | Да | Номер документа | |
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












