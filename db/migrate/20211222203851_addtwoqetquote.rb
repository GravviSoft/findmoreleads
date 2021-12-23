class Addtwoqetquote < ActiveRecord::Migration[6.1]
  def change
    add_column :qetquotes, :phonenumber, :string
    add_column :qetquotes, :notes, :string
    add_column :qetquotes, :email_clicks, :string
  end
end
