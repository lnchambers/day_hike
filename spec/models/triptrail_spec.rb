require 'rails_helper'

RSpec.describe Triptrail, type: :model do
  it { should belong_to(:trip) }
  it { should belong_to(:trail) }
end
