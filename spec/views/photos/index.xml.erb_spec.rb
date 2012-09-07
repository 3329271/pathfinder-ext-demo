# encoding: utf-8
require 'spec_helper'

describe "photos/index.xml.erb" do
  context 'photos' do
    before do
      person = FactoryGirl.create(:person)
      @russian_passport = FactoryGirl.create(:russian_passport, :person => person)
      @date = DateTime.now
      @photo1 = person.photos.create(FactoryGirl.attributes_for(:photo, :owner => @russian_passport, :created_date => @date, :modified_date => @date))
      @photo2 = person.photos.create(FactoryGirl.attributes_for(:photo, :owner => @russian_passport))
      @photos = PaginableArray.new([@photo1, @photo2])

      @xml = Nokogiri::XML.parse(render)
    end

    context 'test 1-st photo' do
      subject { @xml.xpath('//photos/photo[1]') }

      it { should have_tag('id').with_value(@photo1.id) }
      it { should have_tag('description').with_value(@photo1.description) }
      it { should have_tag('name').with_value(@photo1.name) }
      it { should have_tag('path').with_value(nil) }
      # it { should have_tag('created_date').with_value(l(@date, :format => :xml)) }
      # it { should have_tag('modified_date').with_value(l(@date, :format => :xml)) }
    end

    context 'test 2-nd photo' do
      subject { @xml.xpath('//photos/photo[2]') }

      it { should have_tag('id').with_value(@photo2.id) }
      it { should have_tag('description').with_value(@photo2.description) }
    end

  end
end
