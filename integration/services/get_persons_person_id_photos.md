---
layout: integration
title: GET /persons/:person_id/photos.xml - запрос фотографий физического лица
---

## Список параметров запроса

| Параметр | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| person_id | Да | ID физического лица | |

## Пример запроса (запрос фотографий физического лица с person_id=5)

`GET https://ex_system/persons/5/photos.xml`

## Структура ответа

{% highlight xml %}
<?xml version="1.0"?>
<photos>
    <pages>
        <!-- Структура объекта pages -->
    </pages>
    <photo>
        <!-- Структура объекта ‘Фотография’ -->
    </photo>   
</photos>
{% endhighlight %}

## Параметры ответа

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:----|:------|:---------------|:-------------|:--------------|
| [pages]() | Object | | Да | Данные о количестве найденных записей, общем количестве страниц и номере текущей страницы загрузки | |
| [photo]({{site.baseurl}}/integration/models/pages.html) | Object | | Нет | Фотография | |