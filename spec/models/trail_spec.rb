require "rails_helper"

describe Trail do
  describe "Validations" do
    it { should have_many(:triptrails) }
    it { should have_many(:trips).through(:triptrails) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:length) }
    it { should validate_presence_of(:address) }
  end
end
