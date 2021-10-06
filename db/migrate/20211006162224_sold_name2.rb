class SoldName2 < ActiveRecord::Migration[6.1]
  def change
    change_column :qetquotes, :sold, :string, default: "Not Yet"
  end
end
