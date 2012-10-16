---
layout: integration
title: GET /persons/:person_id/addresses.xml - Запрос получение информации об адресах, связанных с конкретным человеком
---

## Список параметров запроса

| Параметр | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| person_id | Да | ID физического лица | |

## Пример запроса (Запрос получения данных о транспортных средствах с person_id=5)

`GET https://ex_system/persons/5/addresses.xml`

## Структура ответа

{% highlight xml %}
<?xml version="1.0"?>
<addresses>
  <pages>
    <!-- Структура объекта pages -->
  </pages>
  <address>
    <!-- Структура объекта address -->
  </address>
  <address>
    <!-- Структура объекта address -->
  </address>
  <address>
    <!-- Структура объекта address -->
  </address>
</addresses>
{% endhighlight %}

## Параметры ответа

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:----|:------|:---------------|:-------------|:--------------|
| [pages]({{site.baseurl}}/integration/models/pages.html) | Object | | Да | Данные о количестве найденных записей, общем количестве страниц и номере текущей страницы загрузки | |
| [address]({{site.baseurl}}/integration/models/address.html) | Object | | Да | Данные об адресе, связанном с человеком  | |