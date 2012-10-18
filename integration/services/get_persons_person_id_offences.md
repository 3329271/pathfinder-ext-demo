---
layout: integration
title: GET /persons/:person_id/offences.xml - Запрос на получение информации о правонарушениях
---

## Список параметров запроса

| Параметр | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| person_id | Да | ID физического лица | |

## Пример запроса (Запрос на получение информации о правонарушениях с person_id=5)

`GET https://ex_system/persons/5/offences.xml`

## Структура ответа

{% highlight xml %}
<?xml version="1.0"?>
<role_in_offences>
  <pages>
    <!-- Структура объекта pages -->
  </pages>
  <role_in_offence>
    <!-- Структура объекта offence -->
  </role_in_offence>
  <role_in_offence>
    <!-- Структура объекта offence -->
  </role_in_offence>
</role_in_offences>
{% endhighlight %}

## Параметры ответа

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:----|:------|:---------------|:-------------|:--------------|
| [pages]({{site.baseurl}}/integration/models/pages.html) | Object | | Да | Данные о количестве найденных записей, общем количестве страниц и номере текущей страницы загрузки | |
| [role_in_offence]({{site.baseurl}}/integration/models/role_in_offence.html) | Object | | Да | Информация о правонарушениях человека | |
