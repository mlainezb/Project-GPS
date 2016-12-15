class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :patent
      t.string :model_vh
      t.string :picture_vh
      t.string :color_marker
      t.integer :status_vh

      t.timestamps
    end
  end
end
