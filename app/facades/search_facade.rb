class SearchFacade
  def search_for(nation)
    member_data = SearchService.new.members_by_nation(nation)
    member_data.map do |data|
      Member.new(data)
    end
  end
end