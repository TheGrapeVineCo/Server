class RemoveColumnFromWineListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :wine_listings, :description, :string
  end
end
