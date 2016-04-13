require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    create(:user)
  end

end
