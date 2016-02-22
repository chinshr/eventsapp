class AgendaItem < ActiveRecord::Base
  belongs_to :event
  validates :name, presence: true, length: { minimum: 1, maximum: 255 }
  validates :note, length: { maximum: 65535 }
end
