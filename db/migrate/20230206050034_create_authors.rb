class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :Name
      t.string :Email
      t.date :DOB
      t.string :Phone_No
      
      t.timestamps
    end
  end
end
