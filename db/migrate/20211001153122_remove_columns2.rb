class RemoveColumns2 < ActiveRecord::Migration[6.1]
  def change
    add_column :qetquotes, :firstname, :string
    add_column :qetquotes, :lastname, :string
  end
end
