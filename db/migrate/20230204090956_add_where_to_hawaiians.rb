class AddWhereToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :where, :integer
  end
end
