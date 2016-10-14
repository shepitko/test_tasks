class CreateShippers < ActiveRecord::Migration[5.0]
  def change
    create_table :shippers do |t|
      t.string :country
      t.string :region
      t.string :city
      t.integer :zip_from
      t.integer :zip_to
      t.float :weight_from
      t.float :weight_to
      t.decimal :price, precision: 8, scale: 4
      t.string :delivery_type

      t.timestamps
    end
  end
end
