require "rails_helper"

RSpec.describe SearchService do
  describe "#member_by_nation" do
    it "returns an array of members" do
      service = SearchService.new
      search = service.members_by_nation("Fire Nation")

      expect(search).to be_an(Array)
    end

    it "returns members data" do
      service = SearchService.new
      search = service.members_by_nation("Fire Nation")
      member_data = search.first

      expect(member_data).to have_key :name
      expect(member_data).to have_key :allies
      expect(member_data).to have_key :enemies
      expect(member_data).to have_key :affiliation
      expect(member_data).to have_key :photoUrl
    end
  end
end
