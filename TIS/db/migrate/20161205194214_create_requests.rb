class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
    	t.references :place
      t.timestamps null: false
    end
  end
end
