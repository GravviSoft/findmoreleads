class SoldName3 < ActiveRecord::Migration[6.1]
  def change
    execute "UPDATE qetquotes SET sold = 'Not Yet'"
  end
end
