require 'rails_helper'

RSpec.describe AgendaItem, type: :model do
  it "has a valid factory" do
    create(:agenda_item)
  end

  it "is invalid without a name" do
    agenda_item = build(:agenda_item, name: '')
    expect(agenda_item).not_to be_valid
  end

end
