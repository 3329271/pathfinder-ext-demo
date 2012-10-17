---
layout: integration
title: Универсальный сервис
---

Ниже представлен набор запросов, поддерживаемый Универсальным сервисом. Для ознакомления с требуемым форматом ответа, получаемого от внешней системы, необходимо выбрать соответствующий запрос в таблице.

| Запросы | Назначение |
|:--------|:-----------|
| [GET /persons.xml]({{site.baseurl}}/integration/services/get_persons.html) | Получение списка физических лиц |
| [GET /persons/:id.xml]({{site.baseurl}}/integration/services/get_persons_person_id.html) | Получение данных физического лица по его id |
| [GET /persons/:person_id/identity_cards.xml]({{site.baseurl}}/integration/services/get_persons_person_id_identity_cards.html) | Получение документов удостоверяющих личность (ДУЛ) соответствующего физического лица |
| GET /persons/:person_id/identity_cards/identity_card_id/adresses.xml | Получение информации по адресам, связанным с указанным ДУЛ identity_card_id соответствующего физического лица |
| [GET /persons/:person_id/identity_cards/:identity_card_id/photos.xml]({{site.baseurl}}/integration/services/get_persons_person_id_identity_cards_identity_card_id_photos.html) | Получение фотографий из соответствующего ДУЛ identity_card_id |
| [GET /persons/:person_id/photos.xml]({{site.baseurl}}/integration/services/get_persons_person_id_photos.html) | Получение фотографий физического лица
| GET /photos/:photo_id | Получение фотографии по ее photo_id
| [GET /persons/:person_id/addresses]({{site.baseurl}}/integration/services/get_persons_person_id_addresses.html) | Получение информации об адресах
| [GET /persons/:person_id/offences]({{site.baseurl}}/integration/services/get_persons_person_id_offences.html) | Получение информации о правонарушениях
| [GET /persons/:person_id/movements]({{site.baseurl}}/integration/services/get_persons_person_id_movements.html) | Получение информации о перемещениях
| [GET /persons/:person_id/arms]({{site.baseurl}}/integration/services/get_persons_person_id_arms.html) | Получение данных об оружии
| [GET /persons/:person_id/vehicles]({{site.baseurl}}/integration/services/get_persons_person_id_vehicles.html) | Получение информации о транспортных средствах
| [GET /persons/:person_id/vehicles/:vehicle_id/owners]({{site.baseurl}}/integration/services/get_persons_person_id_vehicles_vehicle_id_owners.html) | Получение информации о транспортных средствах

