class AddOverallToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :overall, :integer
  end
end
