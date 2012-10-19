---
layout: integration
title: Модель данных "Свидетельство о регистрации ТС"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID СТС | |
| person_id | String | | Да | Уникальный ID человека в системе | |
| series | String | 4 | Нет | Серия СТС | |
| number | String | 6 | Нет | Номер СТС| |
| registration_number | String | | Нет | Гос.номер | |
| vin | String | | Нет | vin | |
| marque  | String | | Нет | марка | |
| model | String | | Нет | Модель | |
| vehicle_type | String | | Нет | Тип ТС | |
| body_type | String | | Нет | Тип кузова | |
| vehicle_category | ClassifierValue | | Нет | категория ТС | |
| year | Integer | | Нет | Год выпуска ТС | |
| engine_model | String | | Нет | Модель двигателя | |
| engine_number | String | | Нет | Номер двигателя | |
| chassis_number | String | | Нет | Номер шасси | |
| body_number | String | | Нет | Номер кузова | |
| color | String | | Нет | Цвет | |
| kilowatt_power | Real | | Нет | Мощность (Квт) | |
| horsepower_power | Real | | Нет | Мощность (ЛС) | |
| engine_v | Real | | Нет | Объем двигателя | |
| pts_series | String | 4 | Нет | Серия ПТС | |
| pts_number | String | 6 | Нет | Номер ПТС| |
| max_weight | Real | | Нет | Масса (макс.) | |
| weight | Real | | Нет | Масса (снар.) без нагрузки | |
| issuer | String | | Нет | кем выдан | |
| issue_date | Date | | Нет | дата выдачи СТС | |
| special_notes | String | | Нет | Особые отметки СТС | |
| additional_information | String | | Нет | Особые отметки | |


##Представление объекта в виде XML:

{% highlight xml %}
<sts>
  <!-- Идентификатор во внешней системе -->
  <id>123</id>
  <person_id>123</person_id>
  <series>12АБ</series>
  <number>123456</number>
  <registration_number>A197HP177</registration_number>
  <vin>12313dsdfas23424</vin>
  <mark>Лексус</mark>
  <model>RX350</model>
  <vehicle_type>Легковые автомобили седан</vehicle_type>
  <body_type>Седан</body_type>
  <vehicle_category>
    <code>B</code>
    <title>Легковой автомобиль</title>
  </vehicle_category>
  <year>2007</year>
  <engine_model>3434</engine_model>
  <engine_number>SD12313123</engine_number>
  <chassis_number>sdfsd-s12313</chassis_number>
  <body_number>123123dfsf</body_number>
  <color>СЕРЫЙ ТЕМНЫЙ</color>
  <kilowatt_power>2134,1</kilowatt_power>
  <horsepower_power>1234,1</horsepower_power>
  <engine_v>2342,3</engine_v>
  <vehicle_title_number>21ТО</vehicle_title_number>
  <pts_series>12АБ</pts_series>
  <pts_number>900001</pts_number>
  <max_weight>1234,1</max_weight>
  <weight>1234,1</weight>
  <issuer>4 отделение МОТОТРЭР</issuer>
  <special_notes>Специальные отметки</special_notes>
  <issue_date>2012-12-12</issue_date>
  <additional_information>Дополнительная информация</additional_information>
</sts>
{% endhighlight %}
