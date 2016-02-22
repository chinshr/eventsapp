class Event < ActiveRecord::Base
  has_many :agenda_items, dependent: :destroy
  validates :name, presence: true, length: { minimum: 1, maximum: 255 }
end
