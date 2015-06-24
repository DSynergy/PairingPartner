class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.integer :uid
      t.string :avatar_url
      t.string :html_url
      t.boolean :hireable
      t.integer :followers
      t.integer :following
      t.string :description
      t.json :raw_data
      t.timestamps null: false
    end
  end
end
