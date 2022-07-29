class AddColumnToWineListings < ActiveRecord::Migration[6.1]
  def change
    add_column :wine_listings, :description, :text
  end
end
