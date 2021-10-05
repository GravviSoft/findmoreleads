class AddPhonefield3 < ActiveRecord::Migration[6.1]
  def change
    change_column :qetquotes, :phone, :integer, limit: 8
  end
end
