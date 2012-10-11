module PersonFinder
  class IdentityCardQueryBase

    def where(params = {})
      q = query
      cleared_params = {}

      allowed_params.each do |k, v|
        next if !params.key?(k) || bad_param?(v, params[k])

        cleared_params[v] = get_value(v, params[k])
      end

      cleared_params.each { |k, v| q.add(k, v) } if !bad_params?(cleared_params)

      q.empty? ? [] : q.generate.pluck(pluck)
    end

    protected

    def allowed_params
      nil
    end

    def query
      nil
    end

    def pluck
      nil
    end

    def get_value(name, value)
      value
    end

    def bad_param?(name, value)
       value.blank?
    end

    def bad_params?(cleared_params)
      false
    end
  end
end
