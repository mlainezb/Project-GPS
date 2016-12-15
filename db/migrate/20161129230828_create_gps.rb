class CreateGps < ActiveRecord::Migration[5.0]
  def change
    create_table :gps do |t|
      t.integer :status
      t.float :latitude
      t.float :length
      t.integer :available_gps
      t.integer :number_gps
      t.integer :number_phone
      t.integer :emei
      t.text :xtra

      t.timestamps
    end
  end
end
