class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :Title
      t.string :Name
      t.string :Desc
      t.date :published_date
      t.string :category
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end
  end
end
