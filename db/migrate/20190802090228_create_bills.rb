class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :restaurant_name
      t.float :total_price
      t.float :service_charge

      t.timestamps
    end
  end
end
