class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :long_url
      t.string :short_url
      t.integer :user_id

      t.timestamps
    end
  end
end
