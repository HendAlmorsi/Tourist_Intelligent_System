class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :state
      t.integer :type
      t.text :description
      t.string :avatar
      t.float :price

      t.timestamps null: false
    end
  end
end
