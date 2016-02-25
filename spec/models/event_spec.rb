require 'rails_helper'

RSpec.describe Event, type: :model do
  it "has a valid factory" do
    create(:event)
  end
  it "is invalid without a name"
end
