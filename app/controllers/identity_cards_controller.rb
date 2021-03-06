class IdentityCardsController < ApplicationController
  before_filter :find_person, :only => [:index]

  def index

    @identity_cards = @person.identity_cards.page(current_page(params)).per(MAX_PAGE_SIZE)

    respond_to do |format|
      format.xml { render }
      # format.json { render :json => @person }
    end
  end

  private

  def find_person
    @person = Person.find(params[:person_id])
  rescue ActiveRecord::RecordNotFound
    head(404)
  end
end
