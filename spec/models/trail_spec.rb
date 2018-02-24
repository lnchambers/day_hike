require "rails_helper"

describe Trail do
  describe "Validations" do
    it { should have_many(:triptrails) }
    it { should have_many(:trips).through(:triptrails) }
  end
end
