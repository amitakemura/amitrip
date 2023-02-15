class AddImage2ToHawaiians < ActiveRecord::Migration[6.1]
  def change
    add_column :hawaiians, :image2, :string
  end
end
