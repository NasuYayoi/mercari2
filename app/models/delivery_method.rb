class DeliveryMethod < ApplicationRecord
  belongs_to :item
  has_one :delivery_method
end
