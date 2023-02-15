class AddNameToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :name, :string
  end
end
