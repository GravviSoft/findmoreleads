class Nostring < ActiveRecord::Migration[6.1]
  def change
    change_column :qetquotes, :phone, :string
  end
end
