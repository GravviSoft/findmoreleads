class Industry < ActiveRecord::Migration[6.1]
  def change
    add_column :qetquotes, :industry, :string
  end
end
