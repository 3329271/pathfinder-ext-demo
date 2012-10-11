class CreateDrivingLicences < ActiveRecord::Migration
  def change
    create_table :driving_licences do |t|
      t.string :first_name, :length => 256
      t.string :last_name, :length => 256
      t.string :middle_name, :length => 256
      t.string :first_name_latin, :length => 256
      t.string :last_name_latin, :length => 256
      t.datetime :birth_date
      t.string :birth_place_code

      t.timestamps
    end
  end
end
