class RemoveUsernameFromHawaiian < ActiveRecord::Migration[6.1]
  def change
    remove_column :hawaiians, :username, :string
  end
end
