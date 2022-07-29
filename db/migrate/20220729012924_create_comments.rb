class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wine_listing, null: false, foreign_key: true
      t.text :user_comment

      t.timestamps
    end
  end
end
