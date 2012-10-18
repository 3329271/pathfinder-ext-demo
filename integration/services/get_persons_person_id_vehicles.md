---
layout: integration
title: GET /persons/:person_id/vehicles.xml - Запрос получение данных о транспортных средствах
---

## Список параметров запроса

| Параметр | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| person_id | Да | ID физического лица | |

## Пример запроса (Запрос получения данных о транспортных средствах с person_id=5)

`GET https://ex_system/persons/5/vehicles.xml`

## Структура ответа

{% highlight xml %}
<?xml version="1.0"?>
<vehicles>
  <pages>
    <!-- Структура объекта pages -->
  </pages>
  <vehicle>
    <id>...</id>
  <vehicle>
  <vehicle>
    <id>...</id>
  <vehicle>
  <vehicle>
    <id>...</id>
  <vehicle>
</vehicles>
{% endhighlight %}

## Параметры ответа

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:----|:------|:---------------|:-------------|:--------------|
| [pages]({{site.baseurl}}/integration/models/pages.html) | Object | | Да | Данные о количестве найденных записей, общем количестве страниц и номере текущей страницы загрузки | |
| [vehicle]({{site.baseurl}}/integration/models/vehicle.html) | Object | | Да | Данные о транспортном средстве | |
