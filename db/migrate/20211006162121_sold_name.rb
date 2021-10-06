class SoldName < ActiveRecord::Migration[6.1]
  def change
    change_column :qetquotes, :sold, :string
  end
end
