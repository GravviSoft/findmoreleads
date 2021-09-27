class AddDefault < ActiveRecord::Migration[6.1]
  def change
    change_column :quotes, :readyornot, :string, default: "Sent"
  end
end
