---
layout: integration
title: Модель данных "Заграничный паспорт гражданина РФ"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---|:-----|:-----|:--------|
| id | String | | Да | Уникальный ID загранпаспорта гражданина РФ | |
| person_id | String | | Да | Уникальный ID физического лица | |
| issuing_state | String | строго 3 | Да | Код государства выдачи | |
| number | String | строго 7 | Да | Номер документа | |
| series | String | строго 2 | Да | Серия документа | |
| issue_date | Date | | Да | Дата выдачи | |
| exp_date | Date | | Да | Дата окончания срока действия | |
| issuer | String | | Да | Кем выдан | |
| region | ClassifierValue | | Нет | Регион | |
| reason | ClassifierValue | | Нет | Причина выдачи | |
| status | ClassifierValue | | Нет | Статус документа удостоверяющего личность | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| first_name_latin | String | | Да | Имя физического лица (лат.) | |
| last_name_latin | String | | Да | Фамилия физического лица (лат.) | |
| sex | ClassifierValue | | Да | Пол физического лица | |
| nationality | ClassifierValue | | Да | Гражданство | |
| birth_place | String | | Да | Место рождения | |
| birth_place_latin | String | | Да | Место рождения (лат.) | |
| birth_date | Date | | Да | Дата рождения | |

##Представление объекта в виде XML:

{% highlight xml %}
<international_passport>
  <id>5</id>
  <person_id>5</person_id>
  <issuing_state>RUS</issuing_state>
  <number>700125</number>
  <series>62</serie>
  <issue_date>2008-05-11</issue_date>
  <exp_date>2013-05-11</exp_date>
  <issuer>Отделение УФМС России</issuer>
  <region>
    <code>770000000000</code>
    <title></title>
  </region>
  <reason>
    <code>2</code>
    <title></title>
  </reason>
  <status>
    <code>1</code>
    <title></title>
  </status>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <first_name_latin>Vasilii</first_name_latin>
  <last_name_latin>Ivanov</last_name_latin>
  <sex>
    <code>1</code>
    <title>М/М</title>
  </sex>
  <nationality>
    <code>RU</code>
    <title>Российская Федерация/Russian Federation</title>
  </nationality>
  <birth_place>г. Липецк</birth_place>
  <birth_place_latin>Lipetsk</birth_place_latin>
  <birth_date>1965-03-10</birth_date>
</international_passport>
{% endhighlight %}
