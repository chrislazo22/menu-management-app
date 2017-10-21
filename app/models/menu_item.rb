class MenuItem < ApplicationRecord
  validates_presence_of :name, :description
  validates :price, presence: true,
            numericality: true
end
