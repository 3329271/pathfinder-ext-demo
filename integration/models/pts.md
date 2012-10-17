---
layout: integration
title: Модель данных "ПТС"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | Integer | | Да | Уникальный ID ПТС | |
| serie | String | | Да | Серия | |
| number | String | | Да | Номер | |
| registration_number | String | | Да | Гос.номер | |
| registration_number_type | ClassifierValue | | Да | Тип рег.знака | |
| engine_number | String | | Да | Номер двигателя | |
| engine_type | String | | Да | Тип двигателя | |
| engine_model | String | | Да | Модель двигателя | |
| engine_v | Real | | Да | Объем двигателя | |
| engine_year | Integer | | Да | Год выпуска (двигателя) | |
| euro_standart | ClassifierValue | | Да | Экологический класс | |
| chassis_number | String | | Да | Номер шасси | |
| body_number | String | | Да | Номер кузова | |
| vin | String | | Да | vin | |
| additional_information | String | | Нет | Доп.сведения | |
| mark | String | | Да | Марка | |
| model | String | | Да | Модель | |
| vehicle_type | ClassifierValue | | Да | Тип ТС | |
| body_type | ClassifierValue | | Нет | Тип кузова | |
| vehicle_category | ClassifierValue | | Нет | Категория ТС | |
| year | Integer | | Да | Год выпуска (авто) | |
| color | String | | Да | Цвет | |
| kilowatt_power | Real | | Да | Мощность (Квт) | |
| horsepower_power | Real | | Да | Мощность (ЛС) | |
| weight | Real | | Да | Масса (снар.) | |
| max_weight | Real | | Да | Масса (макс.) | |
| right_hand_type | Boolean | | Нет | Признак "Правый руль" | |
| max_weight | Real | | Да | Масса (макс.) | |
| max_weight | Real | | Да | Масса (макс.) | |
| issuer | Real | | Да | Кем выдан  | |
| special_notes | String | | Нет | Особые отметки | |
| additional_information | String | | Нет | Дополнительная информация | |
| owner_name | String | | Да | Наименование собственника (ф. и. о.) ТС | |
| [owner_address]({{site.baseurl}}/integration/models/address.html) | Object | | Да | Адрес собственника ТС | |
| issuer | String | | Да | Наименование организации, выдавшей паспорт | |
| [issuer_address]({{site.baseurl}}/integration/models/address.html) | Object | | Да | Адрес организации, выдавшей паспорт | |
| issue_date | Date | | Да | Дата выдачи | |
| [sts]({{site.baseurl}}/integration/services/sts.html) | Object | | Да | Cвидетельство о регистрации ТС | |
| sale_date | Date | | Да | Дата продажи | |
| property_document | String | | Да | Документ на право собственности | |
| deregistration_date | Date | | Нет | Дата снятия с учета | |

##Представление объекта в виде XML:

{% highlight xml %}
<pts>
  <!-- Идентификатор во внешней системе -->
  <id>123</id>
  <serie>61MP</serie>
  <number>999999</number>
  <!-- registration_number>A197HP177</registration_number>
  <registration_number_type>
    <code>1</code>
    <title>Основной</title>
  </registration_number_type -->
  <engine_number>SD12313123</engine_number>
  <engine_type>
    <code>1</code>
    <title>Бензиновый</title>
  </engine_type>
  <engine_model>3434</engine_model>
  <engine_v>2342,3</engine_v>
  <engine_year>2007</engine_year>
  <euro_standart>
    <code>1</code>
    <title>Третий</title>
  </euro_standart>
  <chassis_number>sdfsd-s12313</chassis_number>
  <body_number>123123dfsf</body_number>
  <vin>12313dsdfas23424</vin>
  <additional_information>Дополнительая информация</additional_information>
  <mark>HYUNDAI SM</mark>
  <model>Santa Fe classic</model>
  <vehicle_type>
    <code>1</code>
    <title>Легковой универсал</title>
  </vehicle_type>
  <body_type>
    <code>1</code>
    <title>универсал</title>
  </body_type>
  <vehicle_category>
    <code>2</code>
    <title>B</title>
  </vehicle_category>
  <year>2010</year>
  <color>серебристый</color>
  <kilowatt_power>127</kilowatt_power>
  <horsepower_power>173</horsepower_power>
  <weight>2380</weight>
  <max_weight>1756</max_weight>
  <right_hand_type>False</right_hand_type>
  <special_notes>Особые отметки</special_notes>
  <additional_information>Дополнительная информация</additional_information>
  <owner_name>Иванов Иван Иванович</owner_name>
  <owner_address>
    <!-- Структура объекта 'Адрес' -->
  </owner_address>
  <issuer>ООО "Аспект"</issuer>
  <issuer_address>
    <!-- Структура объекта 'Адрес' -->
  </issuer_address>
  <issue_date>2001-05-11</issue_date>
  <rows>
    <row>
      <sts>
        <!-- Структура объекта 'СТС' -->
      </sts>
      <owner_address>...</owner_address>
      <sale_date>2002-11-22</sale_date>
      <property_document>22EC787898</property_document>
      <deregistration_date></deregistration_date>
    </row>
    <row>
      <sts>
        <!-- Структура объекта 'СТС' -->
      </sts>
      <sale_date>2002-11-22</sale_date>
      <property_document>22EC787898</property_document>
      <deregistration_date></deregistration_date>
    </row>
    <row>
      <sts>
        <!-- Структура объекта 'СТС' -->
      </sts>
      <sale_date>2002-11-22</sale_date>
      <property_document>22EC787898</property_document>
      <deregistration_date></deregistration_date>
    </row>
  </rows>
</pts>
{% endhighlight %}
