class CreateWineListings < ActiveRecord::Migration[6.1]
  def change
    create_table :wine_listings do |t|
      t.string :brand
      t.string :grape_variety
      t.integer :year
      t.string :category
      t.string :country
      t.string :region
      t.string :description

      t.timestamps
    end
  end
end
