---
layout: integration
title: GET /persons/:person_id.xml - Запрос получения данных ФЛ по id
---

## Список параметров запроса

| Параметр | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| person_id | Да | ID физического лица | |

## Пример запроса (Запрос получения данных ФЛ с person_id=5)

`GET https://ex_system/persons/5.xml`

## Структура ответа

{% highlight xml %}
<?xml version="1.0"?>
<person>
  <id>5</id>
</person>
{% endhighlight %}
