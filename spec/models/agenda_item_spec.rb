require 'rails_helper'

RSpec.describe AgendaItem, type: :model do
  it "has a valid factory" do
    create(:agenda_item)
  end
  it "is invalid without a name"
end
