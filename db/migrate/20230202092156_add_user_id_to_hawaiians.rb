class AddUserIdToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :user_id, :integer
  end
end
