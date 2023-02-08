class RemoveNameFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :Name, :string
  end
end
