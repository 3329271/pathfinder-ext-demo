---
layout: integration
title: Модель данных "Оружие"
---

##Структура объекта:

| Параметр | Тип | Длина | Обязательность | Наименование | Формат данных |
|:---------|:---------------|:-------------|:------------------------|
| id | String | | Да | Уникальный ID оружия | |
| category | ClassifierValue | | Да | Категория учета | |
| type | ClassifierValue | | Да | Стрелковое оружие | |
| mark | String | | Да | Марка | |
| model | String | | Да | Модель | |
| serie | String | | Да | Серия | |
| number | String | | Да | Номер | |
| calibre | Real | | Да | Калибр | |
| manufacturer | ClassifierValue | | Да | Страна изготовитель | |
| manufacture_year | Integer | | Да | Год изготовления | |
| registration_date | Date | | Да | Дата постановки на учет | |
| comments | String | | Да | Дополнительная информация об оружии | |
| marks | List | | Да | Особые приметы | |
| mark | String | | Да | Особые примета | |


##Представление объекта в виде XML:

{% highlight xml %}
<arm>
  <!-- Идентификатор во внешней системе -->
  <id>123</id>
  <!-- Категория учета -->
  <category>
    <code>1</code>
    <title>Категория 1</title>
  </category>
  <!-- Вид оружия -->
  <type>
    <code>1</code>
    <title>Стрелковое оружие</title>
  </type>
  <!-- Марка -->
  <mark>Автомат Калашникова</mark>
  <!-- Модель -->
  <model>АК-74</model>
  <!-- Серия -->
  <serie>1234</serie>
  <!-- Номер -->
  <number>567890</number>
  <!-- Калибр -->
  <calibre>7,62</calibre>
  <!-- Страна-изготовитель -->
  <manufacturer>
    <code>1</code>
    <title>РФ</title>
  </manufacturer>
  <!-- Год выпуска -->
  <manufacture_year>1989</manufacture_year>
  <!-- Дата постановки на учет -->
  <registration_date>1965-03-10</registration_date>
  <!-- Дополнительная информация -->
  <comments>Дополнительная информация об оружии</comments>
  <!-- Особые приметы -->
  <marks>
    <mark>Гравировка "За заслуги"</mark>
  </marks>
</arm>
{% endhighlight %}
