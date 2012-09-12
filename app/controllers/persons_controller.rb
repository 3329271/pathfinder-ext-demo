class PersonsController < ApplicationController
  before_filter :find_person, :only => [:show]

  def index
    sp = PersonFinder::SearchParams.new(params)
    finder = match_finder(sp.search_type)

    @persons = finder.find(sp)

    respond_to do |format|
      format.xml { render }
    end
  end

  def show
    respond_to do |format|
      format.xml { render }
    end
  end

  private

  def find_person
    @person = Person.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    head(404)
  end

  def match_finder(type)
    case type
    when :basic
      PersonFinder::IdentityCard.new
    else
      PersonFinder::Empty.new
    end
  end
end
