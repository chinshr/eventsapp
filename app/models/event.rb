class Event < ActiveRecord::Base
  has_many :agenda_items, dependent: :destroy
  #validates :name, presence: true, length: { minimum: 1, maximum: 255 }
end

class Event::Step1 < Event
  validates :name, presence: true, length: { minimum: 1, maximum: 255 }
end

class Event::Step2 < Event
  validates :description, presence: true, length: { minimum: 1, maximum: 4096 }
end

class Event::Step3 < Event
  validates :note, length: { maximum: 4096 }
end
