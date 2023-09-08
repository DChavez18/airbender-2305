require "rails_helper"

RSpec.describe SearchFacade do
  describe "search_for" do
    it "returns a list of Member objects for nation that is passed in" do
      facade = SearchFacade.new.search_for("Fire Nation")

      expect(facade).to be_an(Array)
      expect(facade.length).to eq(20)
      expect(facade.first).to be_a(Member)
    end
  end
end