class AddPictureToFlowers < ActiveRecord::Migration[5.1]
  def change
    add_column :flowers, :picture_uid,  :string
    add_column :flowers, :picture_name, :string
  end
end
