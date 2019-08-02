class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :bill_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
