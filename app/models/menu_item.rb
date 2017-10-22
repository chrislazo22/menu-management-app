class MenuItem < ApplicationRecord
  has_many :order_items
  
  validates_presence_of :name, :description
  validates :price, presence: true,
            numericality: true
end
