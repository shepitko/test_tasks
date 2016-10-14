class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.datetime :last_visit
      t.integer :cnt_msgs

      t.timestamps
    end
  end
end
