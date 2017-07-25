class CreateBicycleconfigs < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycleconfigs do |t|
      t.text :name
      t.integer :value

      t.timestamps
    end
  end
end
