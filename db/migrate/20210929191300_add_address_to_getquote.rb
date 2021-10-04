class AddAddressToGetquote < ActiveRecord::Migration[6.1]
  def change
    add_column :qetquotes, :aptnum, :string
    add_column :qetquotes, :city, :string
    add_column :qetquotes, :state, :string
    add_column :qetquotes, :zip2, :integer
  end
end
