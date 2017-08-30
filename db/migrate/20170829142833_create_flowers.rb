class CreateFlowers < ActiveRecord::Migration[5.1]
  def change
    create_table :flowers do |t|
      t.string :title, limit: 150, null: false
      t.string :description, limit: 1000
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
