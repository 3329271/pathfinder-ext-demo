---
layout: integration
title: Модель данных "Миграционная карта"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID документа | |
| person_id | String | | Да | Уникальный ID физического лица | |
| number | String | | Да | Номер документа | |
| coupon | String | | Нет | Талон | |
| arrival_date | Date | | Да | Дата въезда | |
| arrival_place | String | | Да | ПИК въезда | |
| departure_date | Date | | Да | Дата выезда | |
| departure_place | String | | Да | ПИК выезда | |
| stay_since | Date | | Да | Период пребывания с | |
| stay_to | Date | | Да | Период пребывания по | |
| visit_aim | ClassifierValue | | Да | Цель визита | |
| invite_side | String| | Нет | Приглашающая сторона | |
| reason | ClassifierValue | | Нет | Причина выдачи | |
| status | ClassifierValue | | Нет | Статус документа | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| middle_name | String | | Да | Отчество физического лица | |
| sex | ClassifierValue | | Да | Пол физического лица | |
| nationality | ClassifierValue | | Да | Гражданство | |
| birth_date | Date | | Да | Дата рождения | |
| doc_number | String | | Да | Номер документа, удостоверяющего личность | |
| visa_number | String | | Нет | Номер визы | |


##Представление объекта в виде XML:

{% highlight xml %}
<migration_card>
  <id>5</id>
  <person_id>5</person_id>
  <number>7001</number>
  <coupon></coupon>
  <arrival_date>2011-05-11</arrival_date>
  <arrival_place>Домодедово</arrival_place>
  <departure_date>2011-06-11</departure_date>
  <departure_place>Домодедово</departure_place>
  <stay_since>2011-05-01</stay_since>
  <stay_to>2011-06-11</stay_to>
  <visit_aim>
    <code>2</code>
    <title>Туризм</title>
  </visit_aim>
  <invite_side></invite_side>
  <reason>
    <code></code>
    <title></title>
  </reason>
  <status>
    <code></code>
    <title></title>
  </status>
  <first_name>Василий</first_name>
  <last_name>Иванов</last_name>
  <middle_name>Евгеньевич</middle_name>
  <sex>
    <code>1</code>
    <title>М</title>
  </sex>
  <nationality>
    <code>UK</code>
    <title>Украина</title>
  </nationality>
  <birth_date>1965-03-10</birth_date>
  <doc_number>988976543</doc_number>
  <visa_number></visa_number>
</migration_card>
{% endhighlight %}
