---
layout: integration
title: Список сервисов
---

Ниже представлен набор запросов, поддерживаемый Универсальным сервисом.
Для ознакомления с требуемым форматом ответа, получаемого от внешней системы,
необходимо выбрать соответствующий запрос в таблице.

| Запросы | Назначение |
|:--------|:-----------|
| [GET /persons.xml]({{site.baseurl}}/integration/service/get_persons.html) | Получение списка физических лиц |
| [GET /persons/:id.xml]({{site.baseurl}}/integration/service/get_persons_person_id.html) | Получение данных физического лица по его id |
| [GET /persons/person_id/identity_cards.xml]({{site.baseurl}}/integration/service/get_persons_person_id_identity_cards.html) | Получение документов удостоверяющих личность (ДУЛ) соответствующего физического лица |
| GET /persons/person_id/identity_cards/identity_card_id/adresses.xml | Получение информации по адресам, связанным с указанным ДУЛ identity_card_id соответствующего физического лица |
| [GET /persons/person_id/identity_cards/identity_card_id/photos.xml]({{site.baseurl}}/integration/service/get_persons_person_id_identity_cards_identity_card_id_photos.html) | Получение фотографий из соответствующего ДУЛ identity_card_id |
| [GET /persons/person_id/photos.xml]({{site.baseurl}}/integration/service/get_persons_person_id_photos.html) | Получение фотографий физического лица
| GET /photos/photo_id | Получение фотографии по ее photo_id

## Обработка ошибок. Исключительные ситуации

При выполнении любого запроса возможны ошибки. Поведение сервиса при такой
ситуации описано в разделе [Ошибка выполнения сервиса]({{site.baseurl}}/integration/service/service_error.html)
