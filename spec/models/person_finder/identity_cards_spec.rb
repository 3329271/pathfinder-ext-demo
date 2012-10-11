# encoding: utf-8
require 'spec_helper'

describe PersonFinder::IdentityCards do
  before do

    @serie1 = '1234'
    @number1 = '56789'
    @persons = []
    person = FactoryGirl.create(:person)
    @persons << person
    FactoryGirl.create(:russian_passport, :person => person, serie: @serie1, number: @number1)

    @serie2 = '12345'
    @number2 = '567890'
    person = FactoryGirl.create(:person)
    @persons << person
    FactoryGirl.create(:russian_passport, :person => person, serie: @serie2, number: @number2)
  end

  describe 'simple find algorithm' do
    it 'should return empty when empty params' do
      params = PersonFinder::SearchParams.new
      PersonFinder::IdentityCards.new.find(params).should == []
    end
  end

  describe 'simple find algorithm' do
    let(:person) { @persons[1] }
    it 'should return one person when unique params' do
      params = PersonFinder::SearchParams.new(identity_cards:{serie: @serie2})
      PersonFinder::IdentityCards.new.find(params).should == [@persons[1]]
    end
  end

  describe 'simple find algorithm' do
    let(:person) { @persons[0] }
    it 'should return one person when unique params' do
      params = PersonFinder::SearchParams.new(identity_cards: {serie: @serie1, number: @number1})
      PersonFinder::IdentityCards.new.find(params).should == [@persons[0]]
    end
  end

  describe 'find algorithm with "*" symbol' do
    it 'should return one person when unique params' do
      params = PersonFinder::SearchParams.new(identity_cards: {serie: "1234*"})
      PersonFinder::IdentityCards.new.find(params).should == @persons
    end
  end

  describe 'find algorithm with "?" symbol' do
    it 'should return one person when unique params' do
      params = PersonFinder::SearchParams.new(identity_cards:{number: "56789?"})
      PersonFinder::IdentityCards.new.find(params).should == [@persons[1]]
    end
  end

end
