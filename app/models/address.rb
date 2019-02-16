class Address < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :prefecture

  validates :prefecture_id, :city, :address, presence: true

end
