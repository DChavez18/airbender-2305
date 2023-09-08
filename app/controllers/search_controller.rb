class SearchController < ApplicationController
  def index
    @members = search_for.members(nation)
  end
end