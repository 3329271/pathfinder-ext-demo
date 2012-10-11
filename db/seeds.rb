# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class PersonBuilder
  PASSPORT_NUMBER = 900000
  PASSPORT_SERIE = 7000

  attr_accessor :first_name, :last_name, :middle_name, :birth_date, :birth_place, :place_code
  attr_accessor :person_number, :person

  def create_russian_passport()
    i = self.person_number
    passport = RussianPassport.new(first_name: self.first_name,
        last_name: self.last_name,
        middle_name: self.middle_name,
        birth_date: self.birth_date,
        sex_id: 1,
        birth_place: self.place_code)

    passport.build_identity_card(person: self.person,
      number: (PASSPORT_NUMBER + i).to_s,
      serie: (PASSPORT_SERIE + i).to_s,
      type_id: 1,
      issue_date: DateTime.new(2001, 5, 11),
      issuer_code: '12345',
      issuer: 'Организация выдающая паспорта РФ',
      issue_place_code: self.place_code,
      reason_id: 2,
      state_id: 1,
      start_date: DateTime.new(2001, 5, 15)
    )

    passport.save
  end

  def create_international_passport()
    i = self.person_number
    f_passport = InternationalPassport.new(first_name: self.first_name,
      last_name: self.last_name,
      middle_name: self.middle_name,
      first_name_latin: I18n.transliterate(self.first_name),
      last_name_latin: I18n.transliterate(self.last_name),
      birth_date: self.birth_date,
      birth_place_code: self.place_code
    )

    f_passport.build_identity_card(person: self.person,
      number: (PASSPORT_NUMBER + 100 + i).to_s,
      serie: (PASSPORT_SERIE + 100 + i).to_s,
      type_id: 2,
      issue_date: DateTime.new(2011, 5, 11),
      issuer_code: '12345',
      issuer: 'Организация выдающая заграничные паспорта РФ',
      issue_place_code: self.place_code,
      reason_id: 2,
      state_id: 1,
      start_date: DateTime.new(20011, 5, 15)
    )
    f_passport.save    
  end

  def create_driving_licence(i)
    d_l = DrivingLicence.new(first_name: self.first_name,
      last_name: self.last_name,
      middle_name: self.middle_name,
      first_name_latin: I18n.transliterate(self.first_name),
      last_name_latin: I18n.transliterate(self.last_name),
      birth_date: self.birth_date,
      birth_place_code: self.place_code
    )

    d_l.build_identity_card(person: person,
      number: (PASSPORT_NUMBER + 200 + i).to_s,
      serie: (PASSPORT_SERIE + 200 + i).to_s,
      type_id: 2,
      issue_date: DateTime.new(2011, 5, 11),
      issuer_code: '12345',
      issuer: 'Организация выдающая водительские удостоверения',
      issue_place_code: self.place_code,
      reason_id: 2,
      state_id: 1,
      start_date: DateTime.new(20011, 5, 15)
    )
    d_l.save
  end

  def create_person(i, rnd)
    first_names = ['Иван', 'Михаил', 'Виниамин', 'Георгий', 'Тихон', 'Петр', 'Василий', 'Роман', 'Евгений']
    last_names = ['Иванов', 'Сидоров', 'Петров', 'Емельянов', 'Фрунзе', 'Толстов', 'Яковлев', 'Романов', 'Фролов']
    middle_names = ['Иванович', 'Михайлович', 'Виниаминович', 'Георгиевич', 'Тихонович', 'Петрович', 'Васильевич', 'Романович', 'Евгеньевич']

    self.first_name = first_names[rnd.rand(first_names.size)]#.sample(random: rnd)#
    self.last_name = last_names[rnd.rand(last_names.size)]#.sample(rnd)#
    self.middle_name = middle_names[rnd.rand(middle_names.size)]#middle_names.sample(rnd)#
    self.birth_date = DateTime.new(rnd.rand(1950..1996), rnd.rand(11) + 1, rnd.rand(27) + 1)
    self.place_code = '770000000000'
    self.birth_place = 'Место рождения гражданина РФ'

    self.person_number = i
    self.person = Person.create

    create_russian_passport()
    create_international_passport()
    create_driving_licence(i)

    if (i % 2) == 1
      create_driving_licence(i+1)
    end

  end
end

#-------------------------------------------------
# Main
#-------------------------------------------------
RANDOM_SEED = 1234567
PERSON_COUNT = 23
I18n.locale = :ru
rnd = Random.new(RANDOM_SEED)
builder = PersonBuilder.new()
PERSON_COUNT.times { |i| builder.create_person(i, rnd) }

