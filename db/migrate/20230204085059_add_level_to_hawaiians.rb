class AddLevelToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :level, :integer
  end
end
