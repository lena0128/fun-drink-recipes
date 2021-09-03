class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :content
      t.integer :user_id
      t.integer :ingredient_id
      t.timestamps
    end
  end
end
