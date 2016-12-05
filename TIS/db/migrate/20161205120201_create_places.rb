class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :state, default: 0
      t.integer :type
      t.text :description
      t.string :avatar
      t.float :price, default: 0.0

      t.timestamps null: false
    end
  end
end
