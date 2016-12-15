class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :available_dr
      t.string :name
      t.string :last_name
      t.string :surname
      t.integer :rut
      t.integer :rut_dv
      t.integer :number_phone
      t.string :picture_dr

      t.timestamps
    end
  end
end
