# -*- encoding: utf-8 -*-
FactoryGirl.define do
  factory :russian_passport do
    sequence(:first_name) { |i| "Иван#{i}" }
    sequence(:last_name) { |i| "Иванов#{i}" }
    sequence(:middle_name) { |i| "Иванович" }
  end
end
