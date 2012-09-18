class InternationalPassport < ActiveRecord::Base
  has_one :identity_card, :as => :extended_by, :dependent => :destroy

  attr_accessible :first_name, :last_name, :middle_name, :first_name_latin, :last_name_latin
  attr_accessible :birth_date, :birth_place_code, :citizenship_id

  # delegate :person=, :to => :identity_card
  # delegate :person, :to => :identity_card

  def initialize(*params)
    super
    self.identity_card = build_identity_card
  end

  def method_missing(method, *args)
    if self.identity_card.respond_to?(method)
      self.identity_card.send(method, *args)
    else
      super
    end
  end

  def respond_to_missing?(aSymbol, includePriv=false)
    if !super
      self.identity_card.respond_to?(aSymbol, includePriv)
    else
      true
    end
  end
end
