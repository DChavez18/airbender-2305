class SearchController < ApplicationController
  def index
    search_facade = SearchFacade.new
    nation = params[:nation]
    @members = search_facade.search_for(nation)
  end
end