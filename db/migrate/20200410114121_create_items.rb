class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :food_item
      t.integer :quantity
      t.integer :price
    end
  end
end
