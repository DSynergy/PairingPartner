class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :matchee_id
      t.integer :status, default: 0
      t.timestamps null: false
    end
  end
end
