class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.string :measure
      t.integer :drink_id
      t.integer :ingredient_id 
      t.timestamps
    end
  end
end
