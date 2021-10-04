class AddHomepriceColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :qetquotes, :homeprice, :integer
  end
end
