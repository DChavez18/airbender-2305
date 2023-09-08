require "rails_helper"

RSpec.describe Member do
  it "exists and has attributes" do
    member1 = Member.new(name: "Aang", allies: ["Katara", "Sokka"], enemies: ["Fire Lord Ozai"], affiliation: "Air Nomads", photoUrl: "none" )

    expect(member1.name).to eq("Aang")
    expect(member1.allies).to eq(["Katara", "Sokka"])
    expect(member1.enemies).to eq(["Fire Lord Ozai"])
    expect(member1.affiliation).to eq("Air Nomads")
    expect(member1.photoUrl).to eq("none")
  end
end