class AddRatingToFlowers < ActiveRecord::Migration[5.1]
  def change
    add_column :flowers, :rating, :float, default: 0
  end
end
