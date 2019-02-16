class ChangeDatatypeNameOfBrands < ActiveRecord::Migration[5.0]
  def change
     change_column :brands, :name, :string
  end
end
