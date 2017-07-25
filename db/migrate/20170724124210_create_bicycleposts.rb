class CreateBicycleposts < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycleposts do |t|
      t.text :name
      t.integer :value
      t.text :description
      t.integer :bicyclecategory_id

      t.timestamps
    end
  end
end
