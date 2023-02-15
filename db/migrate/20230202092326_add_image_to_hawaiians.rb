class AddImageToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :image, :string
  end
end
