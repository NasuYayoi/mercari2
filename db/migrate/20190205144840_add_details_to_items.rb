class AddDetailsToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :delivery_method, foreign_key: true, null: false
  end
end
