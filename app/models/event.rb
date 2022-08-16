class Event < ApplicationRecord
  belongs_to :calendar

  validates :task, :date, presence: true
end
