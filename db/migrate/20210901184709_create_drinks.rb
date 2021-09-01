class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :drink_name
      t.string :category
      t.string :alcoholic
      t.string :drink_thumb
      t.string :drink_recipe
      t.timestamps
    end
  end
end
