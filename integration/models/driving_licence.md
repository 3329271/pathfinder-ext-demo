---
layout: integration
title: Модель данных "Водительское удостоверение"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID водительского удостоверения | |
| person_id | String | | Да | Уникальный ID физического лица | |
| number | String | строго 10 | Да | Номер водительского удостоверения | |
| categories | List | | Да | Список разрешенных категорий | |
| category | ClassifierValue | | Да | Категория | |
| issuer | String | | Да | Кем выдан | |
| issue_date | Date | | Да | Дата выдачи | |
| exp_date | Date | | Да | Дата окончания срока действия | |
| add_info | String | | Нет | Дополнительная информация | |
| region | ClassifierValue | | Нет | Регион | |
| reason | String | | Нет | Причина выдачи | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| first_name_latin | String | | Да | Имя физического лица (лат.) | |
| last_name_latin | String | | Да | Фамилия физического лица (лат.) | |
| birth_place | String | | Да | Место рождения | |
| birth_date | Date | | Да | Дата рождения | |
| residence | String | | Да | Место жительства | |
| residence_latin | String | | Нет | Место жительства (лат.) | |


##Представление объекта в виде XML:

{% highlight xml %}
<!-- Водительское удостоверение -->
<driving_licence>
  <id>5</id>
  <person_id>5</person_id>
  <number>11ОВ700166</number>
  <categories>
    <category>
      <code>B</code>
      <title>Категория B</title>
    </category>
    <category>
      <code>С</code>
      <title>Категория С</title>
    </category>
  </categories>
  <issuer>Отделение УФМС России</issuer>
  <issue_date>2008-05-11</issue_date>
  <exp_date>2018-05-11</exp_date>
  <add_info>…</add_info>
  <region>
    <code>770000000000</code>
    <title></title>
  </region>
  <reason>Причина выдачи</reason>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <first_name_latin>Vasilii</first_name_latin>
  <last_name_latin>Ivanov</last_name_latin>
  <birth_place>Москва, Россия</birth_place>
  <birth_date>1965-03-10</birth_date>
  <residence>г.Санкт-Петербург, РФ</residence>
  <residence_latin>Saint-Petersburg, Russian Federation</residence_latin>
</driving_licence>
{% endhighlight %}
