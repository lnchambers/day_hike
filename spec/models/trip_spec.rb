require "rails_helper"

describe Trip do
  describe "Validations" do
    it { should have_many(:triptrails) }
    it { should have_many(:trails).through(:triptrails) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
  end
end
