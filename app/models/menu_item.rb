class MenuItem < ApplicationRecord
  has_many :order_items

  has_attached_file :image, styles: { small: "150x150" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_presence_of :name, :description, :category
  validates_length_of :name, maximum: 100

  validates :price, presence: true,
            numericality: { greater_than: 0, less_than: 1000 }

end
