class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :date
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :readyornot, :string, default: "Sent"

      t.timestamps
    end
  end
end
