---
layout: integration
title: GET /persons/:person_id/identity_cards - Запрос ДУЛ физического лица
---

## Список параметров запроса

| Параметр | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| person_id | Да | ID физического лица | |

## Пример запроса (запрос ДУЛ физического лица с person_id=5)

`GET https://ex_system/persons/5/identity_cards.xml`

## Структура ответа

{% highlight xml %}
<?xml version="1.0"?>
<identity_cards>
  <pages>
    <!-- Структура объекта pages -->
  </pages>
  <russian_passport>
    <!-- Структура объекта ‘Паспорт гражданина РФ’ -->
  </russian_passport>
  <russian_passport>
    <!-- Структура объекта ‘Паспорт гражданина РФ’ -->
  </russian_passport>
  <international_passport>
    <!-- Структура объекта ‘Заграничный паспорт гражданина РФ’ -->
  </international_passport>
  <international_passport>
    <!-- Структура объекта ‘Заграничный паспорт гражданина РФ’ -->
  </international_passport>
  <driving_licence>
  <!-- Структура объекта ‘Водительское удостоверение’ -->
  </driving_licence>
  <driving_licence>
  <!-- Структура объекта ‘Водительское удостоверение’ -->
  </driving_licence>
</identity_cards>
{% endhighlight %}

Примечание: `<russian_passport>` - это пример объекта, возвращаемого внешней системой. Внешняя система в ответе на данный запрос может вернуть любой объект из класса ДУЛ (ссылка) или пусто, если во внешней системе не найдено ни одного ДУЛ у соответствующего физического лица.

## Параметры ответа

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:----|:------|:---------------|:-------------|:--------------|
| [pages]({{site.baseurl}}/integration/models/pages.html) | Object | | Да | Данные о количестве найденных записей, общем количестве страниц и номере текущей страницы загрузки | |
| [russian_passport]({{site.baseurl}}/integration/models/russian_passport.html) | Object | | Нет | Паспорт гражданина РФ | |
| [international_passport]({{site.baseurl}}/integration/models/international_passport.html) | Object | | Нет | Заграничный паспорт гражданина РФ | |
| [driving_licence]({{site.baseurl}}/integration/models/driving_licence.html) | Object | | Нет | Водительское удостоверение | |