class AddPricesToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :price, :integer
  end
end
