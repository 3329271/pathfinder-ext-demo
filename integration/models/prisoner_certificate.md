---
layout: integration
title: Модель данных "Справка заключенного (Справка об освобождении заключенного)"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID паспорта гражданина РФ | |
|persond_id | Integer | | Да | Уникальный ID физического лица | |
| type | ClassifierValue | | Да | Тип документа удостоверяющего личность | |
| form | ClassifierValue | | Да | Форма справки ("А", "Б-ИЛ", "Б", "В")
| series | String | max 4 | Да | Серия документа | |
| number | String | max 6 | Да | Номер документа | |
| issue_date | Date | | Да | Дата выдачи | |
| issuer | String | | Да | Кем выдан | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| birth_date | Date | | Да | Дата рождения | |
| birth_place | String | | Да | Место рождения | |
| sex | ClassifierValue | | Да | Пол физического лица | |
| clause | String | | Да | Осужден по статье | |
| release_date | Date | | Да | Дата освобождения | |
| destination | String | | Да | Следует к месту жительства | |

##Представление объекта в виде XML:

{% highlight xml %}
<prisoner_certificate>
  <id>5</id>
  <person_id>5</person_id>
  <type>
    <code>1</code>
    <title>СЗ</title>
  </type>
  <form>
    <code>1</code>
    <title>А</title>
  </form>
  <number>7001</number>
  <series>900001</serie>
  <issue_date>2001-05-25</issue_date>
  <issuer>Бутырка</issuer>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <sex>
    <code>1</code>
    <title>М</title>
  </sex>
  <birth_place>г. Липецк</birth_place>
  <birth_date>1965-11-15</birth_date>
  <clause>143-17</clause>
  <release_date>2001-05-25</release_date>
  <destination>Москва, ул. Братиславская, д. 18, корп. 1, кв. 403</destination>
</prisoner_certificate>
{% endhighlight %}












