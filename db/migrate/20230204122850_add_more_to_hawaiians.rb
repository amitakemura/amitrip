class AddMoreToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :more, :text
  end
end
