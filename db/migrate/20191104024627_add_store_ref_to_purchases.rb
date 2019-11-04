class AddStoreRefToPurchases < ActiveRecord::Migration[6.0]
  def change
    add_reference :purchases, :store, null: true, foreign_key: true
  end
end
