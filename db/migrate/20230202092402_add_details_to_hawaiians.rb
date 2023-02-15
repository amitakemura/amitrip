class AddDetailsToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :lat, :float
    add_column :hawaiians, :lng, :float
  end
end
