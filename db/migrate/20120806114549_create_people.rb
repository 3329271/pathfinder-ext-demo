class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :nationality
      t.timestamps
    end
  end
end