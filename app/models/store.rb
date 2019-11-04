class Store < ApplicationRecord
  has_many :purchases, dependent: :destroy
end
