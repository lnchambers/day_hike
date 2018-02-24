require "rails_helper"

describe Trip do
  describe "Validations" do
    it { should have_many(:triptrails) }
    it { should have_many(:trails).through(:triptrails) }
  end
end
