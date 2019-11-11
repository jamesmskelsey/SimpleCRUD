class Purchase < ApplicationRecord
  belongs_to :store
  
  validates :name, :price, :store_id, presence: true
end
