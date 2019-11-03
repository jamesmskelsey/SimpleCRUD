class Purchase < ApplicationRecord
  validates :name, :price, presence: true
end
