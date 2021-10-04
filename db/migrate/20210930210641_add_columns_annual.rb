class AddColumnsAnnual < ActiveRecord::Migration[6.1]
  def change
    add_column :qetquotes, :email, :string
    add_column :qetquotes, :phone, :telephone_field
  end
end
