class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.restaurant :references
      t.integer :price_in_cents
      t.string :name

      t.timestamps
    end
  end
end
