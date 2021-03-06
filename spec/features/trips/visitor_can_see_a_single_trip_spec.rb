require "rails_helper"

describe "As a visitor" do
  before :each do
    @trail = Trail.create!(name: "Opakawagalaga Trail", length: 12, address: "123 Eupanifahorious Way")
    @trail_2 = Trail.create!(name: "Eupanifahorious Trail", length: 15, address: "123 Opakawagalaga Way")
    @trail_3 = Trail.create!(name: "named trail", length: 18, address: "address")
    @trip = Trip.create!(name: "A trip", start_date: "2018-02-23", end_date: "2018-02-26")
    @triptrail = Triptrail.create!(trip: @trip, trail: @trail, name: "A relaxing day")
    @triptrail_2 = Triptrail.create!(trip: @trip, trail: @trail_3, name: "A terrifying proposition")
  end
  describe "when I visit the trips index" do
    it "I can click on a link to a trip show" do
      visit trips_path

      click_on "A trip"

      expect(current_path).to eq(trip_path(@trip))
    end

    it "I can see a list of trails included in the trip" do
      visit trip_path(@trip)

      expect(page).to have_content(@trail.name)
      expect(page).to have_content(@trail.length)
      expect(page).to have_content(@trail.address)
      expect(page).to have_content(@trail_3.name)
      expect(page).to_not have_content(@trail_2.name)
    end

    it "I can see the planned total hiking distance" do
      visit trip_path(@trip)

      expect(page).to have_content("Total Hiking Distance: 30")
    end

    it "I can see the planned average hiking distance" do
      visit trip_path(@trip)

      expect(page).to have_content("Average Distance: 15.0")
    end

    it "I can see the longest hiking distance" do
      visit trip_path(@trip)

      expect(page).to have_content("Longest Distance: 18")
    end

    it "I can see the shortest hiking distance" do
      visit trip_path(@trip)

      expect(page).to have_content("Shortest Distance: 12")
    end

    it "I can see the name for each hike" do
      visit trip_path(@trip)

      expect(page).to have_content(@triptrail.name)
      expect(page).to have_content(@triptrail_2.name)
    end
  end
end
