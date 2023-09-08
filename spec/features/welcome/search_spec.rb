require "rails_helper"

RSpec.describe "Welcome Page" do
  describe "Search for Members" do
    it "has a field to select nations" do
      visit "/"
      
      expect(page).to have_css("p.navbar-brand", text: "The Four Nations")
    end
    
    it "takes me to '/search page when I select 'Fire Nation' and click 'Search For Members'" do
      visit "/"

      select "Fire Nation", from: "nation"
      click_button "Search For Members"

      expect(current_path).to eq("/search")
    end

    it "displays the total number of people who live in the Fire nation" do
      visit "/"

      select "Fire Nation", from: "nation"
      click_button "Search For Members"

      expect(page).to have_content("Total Members: 20")
    end

    it "displays a list of the first 25 members of the Fire Nation and for each shows their name, photo, list of allies and enemies and affiliations" do
      search_facade = SearchFacade.new
      @members = search_facade.search_for("Fire Nation")
      
      visit "/"

      select "Fire Nation", from: "nation"
      click_button "Search For Members"

      within(first('.member')) do
        expect(page).to have_css('.name')
        expect(page).to have_css('.photo')
        expect(page).to have_css('.allies')
        expect(page).to have_css('.enemies')
        expect(page).to have_css('.affiliation')
      end
    end
  end
end