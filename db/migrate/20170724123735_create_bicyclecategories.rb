class CreateBicyclecategories < ActiveRecord::Migration[5.1]
  def change
    create_table :bicyclecategories do |t|
      t.text :name
      t.text :memo

      t.timestamps
    end
  end
end
