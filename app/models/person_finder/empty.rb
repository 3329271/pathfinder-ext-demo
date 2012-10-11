module PersonFinder
  class Empty
    def find(search_params)
      Kaminari::PaginatableArray.new([]).
        page(search_params.page).
        per(search_params.page_size)
    end
  end
end
