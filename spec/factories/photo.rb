# -*- encoding: utf-8 -*-
FactoryGirl.define do
  factory :photo do
    sequence(:name) { |i| "Название фотографии #{i}" }
    sequence(:path) { |i| "/users/guest/photos/#{i}" }
    created_date DateTime.now
    modified_date DateTime.now
    sequence(:description) { |i| "Описание фотографии #{i}" }
  end
end
