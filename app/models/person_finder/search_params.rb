module PersonFinder
  class SearchParams
    PAGE_SIZE = 10

    def initialize(params = {})
      @_params = params.with_indifferent_access
      @_search_type = :basic and return if @_params.keys.include?(:basic.to_s)
    end

    def page
      @_params[:page] || 1
    end

    def search_type
      @_search_type
    end

    def page_size
      PAGE_SIZE
    end

    def bare_params
      return {} if search_type.nil?
      @_params[search_type] || {}
    end

    def unique_hash
        # вообще-то здесь должен вычисляться уникальный хеш из параметров
      '123456789'
    end
  end
end
