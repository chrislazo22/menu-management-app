class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 20 }

  before_save :set_unit_price
  before_save  :set_total_price

  def unit_price
    if persisted?
      self[:unit_price]
    else
      menu_item.price
    end
  end

  def total_price
    unit_price * quantity
  end

  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total_price
    self[:total_price] = quantity * set_unit_price
  end
end
