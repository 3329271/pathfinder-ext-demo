---
layout: integration
title: Модель данных "Свидетельство о регистрации ТС"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID СТС | |
| person_id | String | | Да | Уникальный ID человека в системе | |
| series | String | 4 | Да | Серия СТС | |
| number | String | 6 | Да | Номер СТС| |
| registration_number | String | | Да | Гос.номер | |
| vin | String | | Да | vin | |
| marque  | String | | Да | марка | |
| model | String | | Да | Модель | |
| vehicle_type | ClassifierValue | | Да | Тип ТС | |
| body_type | ClassifierValue | | Да | Тип кузова | |
| vehicle_category | ClassifierValue | | Да | категория ТС | |
| year | Integer | | Да | Год выпуска ТС | |
| engine_model | String | | Да | Модель двигателя | |
| engine_number | String | | Да | Номер двигателя | |
| chassis_number | String | | Да | Номер шасси | |
| body_number | String | | Да | Номер кузова | |
| color | String | | Да | Цвет | |
| kilowatt_power | Real | | Да | Мощность (Квт) | |
| horsepower_power | Real | | Да | Мощность (ЛС) | |
| engine_v | Real | | Да | Объем двигателя | |
| pts_series | String | 4 | Да | Серия ПТС | |
| pts_number | String | 6 | Да | Номер ПТС| |
| max_weight | Real | | Да | Масса (макс.) | |
| weight | Real | | Да | Масса (снар.) без нагрузки | |
| issuer | String | | Да | кем выдан | |
| issue_date | Date | | Да | дата выдачи СТС | |
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
  <vehicle_type>
    <code>1</code>
    <title>ЛЕГКОВОЙ</title>
  </vehicle_type>
  <body_type>
    <code>1</code>
    <title>УНИВЕРСАЛ</title>
  </body_type>
  <vehicle_category>
    <code>1</code>
    <title>ABCDприцеп</title>
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
