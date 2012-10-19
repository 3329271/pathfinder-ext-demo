---
layout: integration
title: Модель данных "Паспорт гражданина РФ"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID паспорта гражданина РФ | |
|persond_id | String | | Да | Уникальный ID физического лица | |
| number | String | max 6 | Да | Номер документа | |
| series | String | max 4 | Да | Серия документа | |
| issue_date | Date | | Да | Дата выдачи | |
| issuer_code | String | строго 7 | Да | Код подразделения | XXX-XXX, где X – любое число от 0 до 9 |
| issuer | String | | Да | Кем выдан | |
| region | ClassifierValue | | Нет | Регион | |
| reason | String | | Нет | Причина выдачи | |
| status | String | | Нет | Статус документа удостоверяющего личность | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| sex | ClassifierValue | | Да | Пол физического лица | |
| birth_place | String | | Да | Место рождения | |
| birth_date | Date | | Да | Дата рождения | |


##Представление объекта в виде XML:

{% highlight xml %}
<russian_passport>
  <id>5</id>
  <person_id>5</person_id>
  <series>7001</serie>
  <number>900001</number>
  <issue_date>2001-05-11</issue_date>
  <issuer_code>12345</issuer_code>
  <issuer>Отделение УФМС России</issuer>
  <region>
    <code>770000000000</code>
    <title></title>
  </region>
  <reason>Причина выдачи</reason>
  <status>Статус документа удостоверяющего личность</status>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <sex>
    <code>1</code>
    <title></title>
  </sex>
  <birth_place>г. Липецк</birth_place>
  <birth_date>1965-03-10</birth_date>
</russian_passport>
{% endhighlight %}












