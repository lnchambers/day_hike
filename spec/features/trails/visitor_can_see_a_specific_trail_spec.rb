require "rails_helper"

describe "As a visitor" do
  before :each do
    @trail = Trail.create!(name: "Opakawagalaga Trail", length: 12, address: "123 Eupanifahorious Way")
    @trail_2 = Trail.create!(name: "Eupanifahorious Trail", length: 15, address: "123 Opakawagalaga Way")
    @trail_3 = Trail.create!(name: "named trail", length: 18, address: "address")
    @trip = Trip.create!(name: "A trip", start_date: Time.now, end_date: Time.now)
    @triptrail = Triptrail.create!(trip: @trip, trail: @trail, name: "A relaxing day")
    @triptrail_2 = Triptrail.create!(trip: @trip, trail: @trail_3, name: "A terrifying proposition")
  end
  describe "when I visit the trails show" do
    it "I can see all attributes of a trail" do
      visit trail_path(@trail)

      expect(page).to have_content(@trail.name)
      expect(page).to have_content(@trail.address)
      expect(page).to have_content(@trail.length)
    end
  end
end
