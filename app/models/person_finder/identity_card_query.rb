module PersonFinder
  class IdentityCardQuery < IdentityCardQueryBase

    private

    def allowed_params
      {
        :serie => :serie,
        :number => :number,
        :type => :extended_by_type
      }
    end

    def query
      Query.new(::IdentityCard.scoped)
    end

    def pluck
      # 'identity_cards.person_id'
      'person_id'
    end

    def get_value(name, value)
      return value if name != :extended_by_type
      type_map = {1 => 'RussianPassport', 2 => 'InternationalPassport' }
      result = type_map[value.to_i]
      return result.nil? ? '-1' : result
    end

    def bad_params?(cleared_params)
      return true if cleared_params.size == 1 and cleared_params.keys.include?(:extended_by_type)
      false
    end

  end
end
