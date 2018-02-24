require "rails_helper"

describe "As a visitor" do
  before :each do
    @trip = Trip.create!(name: "A trip", start_date: Time.now, end_date: Time.now)
  end
  describe "when I visit the trips index" do
    it "I can click on a link to a trip show" do
      visit trips_path

      click on "A trip"

      expect(current_path).to eq(trip_path(@trip))
    end
  end
end
