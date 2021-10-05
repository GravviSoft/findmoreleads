class AddPhonefield < ActiveRecord::Migration[6.1]
  def change
    change_column :qetquotes, :phone, :integer

  end
end
