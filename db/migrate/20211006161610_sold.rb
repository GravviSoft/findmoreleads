class Sold < ActiveRecord::Migration[6.1]
  def change
    rename_column :qetquotes, :primaryres, :sold
  end
end
