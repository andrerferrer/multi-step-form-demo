class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.integer :price_in_cents
      t.string :name

      t.timestamps
    end
  end
end
