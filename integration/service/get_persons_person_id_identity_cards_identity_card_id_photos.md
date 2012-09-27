---
layout: integration
title: GET /persons/:person_id/identity_cards/:identity_card_id/photos - запрос фотографий из ДУЛ
---

## Список параметров запроса

| Параметр | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| person_id | Да | ID физического лица | |
| identity_card_id | Да | ID ДУЛ физического лица | |

## Пример запроса (запрос фото из ДУЛ с identity_card_id=6 у физического лица с person_id=5)

`GET https://ex_system/persons/5/identity_cards/6/photos.xml`

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
    <photo>
        <!-- Структура объекта ‘Фотография’ -->
    </photo>
</photos>
{% endhighlight %}

## Параметры ответа

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:----|:------|:---------------|:-------------|:--------------|
| [pages]({{site.baseurl}}/integration/models/pages.html) | Object | | Да | Данные о количестве найденных записей, общем количестве страниц и номере текущей страницы загрузки | |
| [photo]({{site.baseurl}}/integration/models/photo.html) | Object | | Нет | Фотография | |
