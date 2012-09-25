---
layout: integration
title: Модель данных "Заграничный паспорт иностранного гражданина"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID загранпаспорта иностранного гражданина | |
| person_id | Integer | | Да | Уникальный ID физического лица | |
| type | ClassifierValue | | Да | Тип документа удостоверяющего личность | |
| issuing_state | String | строго 3 | Да | Код государства выдачи | |
| number | String | | Да | Номер документа | |
| issue_date | Date | | Да | Дата выдачи | |
| exp_date | Date | | Да | Дата окончания срока действия | |
| issuer | String | | Да | Кем выдан | |
| reason | ClassifierValue | | Нет | Причина выдачи | |
| status | ClassifierValue | | Нет | Статус документа удостоверяющего личность | |
| first_name | String | | Да | Имя физического лица | |
| last_name | String | | Да | Фамилия физического лица | |
| sex | ClassifierValue | | Да | Пол физического лица | |
| nationality | ClassifierValue | | Да | Гражданство | |
| birth_place | String | | Да | Место рождения | |
| birth_date | Date | | Да | Дата рождения | |

##Представление объекта в виде XML:

{% highlight xml %}
<foreign_passport>
    <id>5</id>
    <person_id>5</person_id>
    <type>
        <code>2</code>
        <title></title>
    </type>
    <issuing_state>USA</issuing_state>
    <number>100003106</number>
    <issue_date>2008-05-11</issue_date>
    <exp_date>2013-05-11</exp_date>
    <issuer_code>12345</issuer_code>
    <issuer>…</issuer>
    <reason>
        <code>2</code>
        <title></title>
    </reason>
    <status>
        <code>1</code>
        <title></title>
    </status>
    <first_name>Pol</first_name>
    <last_name>Frank</last_name>
    <sex>
        <code>1</code>
        <title>М</title>
    </sex>
    <nationality>
        <code>USA</code>
        <title>United States of America</title>
    </nationality>
    <birth_place>Washington</birth_place>
    <birth_date>1965-03-10</birth_date>
</foreign_passport>
{% endhighlight %}
