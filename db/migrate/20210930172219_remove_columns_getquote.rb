class RemoveColumnsGetquote < ActiveRecord::Migration[6.1]
  def change
    remove_column :qetquotes, :singlefam
    remove_column :qetquotes, :condo
    remove_column :qetquotes, :coop
    remove_column :qetquotes, :other
    remove_column :qetquotes, :duplex
    remove_column :qetquotes, :threetofour
    remove_column :qetquotes, :mobilehome
    remove_column :qetquotes, :manufacturedhome
    add_column :qetquotes, :propertytype, :string
  end
end
