class Event < ApplicationRecord
  belongs_to :board
  belongs_to :card
end
