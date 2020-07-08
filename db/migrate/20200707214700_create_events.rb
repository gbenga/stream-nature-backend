class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :time
      t.integer :likes
      t.integer :user_id
      t.integer :location_id
      t.timestamps
    end
  end
end
