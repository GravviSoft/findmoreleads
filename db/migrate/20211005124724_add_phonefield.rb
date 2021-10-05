class AddPhonefield < ActiveRecord::Migration[6.1]
  def change
    change_column :qetquotes, :phone, :telephone_field
  end
end
