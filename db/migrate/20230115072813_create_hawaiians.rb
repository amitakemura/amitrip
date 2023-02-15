class CreateHawaiians < ActiveRecord::Migration[6.1]
  def change
    create_table :hawaiians do |t|
      t.string :country
      t.string :city
      t.text :about

      t.timestamps
    end
  end
end

class AddImageToHawaiians < ActiveRecord::Migration[6.0]
  def change
    add_column :hawaiians, :image, :string
  end
end