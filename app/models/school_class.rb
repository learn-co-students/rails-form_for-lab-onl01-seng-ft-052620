class SchoolClass < ApplicationRecord
  validates_presence_of :title, :room_number
end
