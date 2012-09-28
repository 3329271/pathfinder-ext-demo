class IdentityCardCell < Cell::Rails
  def show(identity_card)
    @identity_card = identity_card
    render
  end

  def international_passport(international_passport)
    @international_passport = international_passport
    render
  end

  def russian_passport(russian_passport)
    @russian_passport = russian_passport
    render
  end

  def driving_licence(driving_licence)
    @driving_licence = driving_licence
    render
  end
end
