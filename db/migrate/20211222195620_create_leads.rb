class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :date
      t.string :company
      t.string :industry
      t.string :phone
      t.string :email
      t.string :notes
      t.string :string
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email_clicks
      t.string :website

      t.timestamps
    end
  end
end
