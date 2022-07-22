class CreateApiV1Comments < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_comments do |t|
      t.text :message

      t.timestamps
    end
  end
end
