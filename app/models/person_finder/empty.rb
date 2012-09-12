module PersonFinder
  class Empty
    def find(search_params)
      Kaminari::PaginatableArray.new([])
    end
  end
end
