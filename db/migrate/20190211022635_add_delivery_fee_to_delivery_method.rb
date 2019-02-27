class AddDeliveryFeeToDeliveryMethod < ActiveRecord::Migration[5.0]
  def change
    add_reference :delivery_methods, :delivery_fee, foreign_key: true
  end
end
