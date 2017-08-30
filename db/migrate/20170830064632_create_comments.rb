class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :flower_id, null: false
      t.string :author, null: false, length: 100
      t.string :body, null: false, length: 1000
      t.integer :vote

      t.timestamps
    end

    add_foreign_key :comments, :flowers
  end
end
