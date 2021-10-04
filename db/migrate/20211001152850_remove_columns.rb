class RemoveColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :qetquotes, :zip
    remove_column :qetquotes,  :singlefam
    remove_column :qetquotes,  :condo
    remove_column :qetquotes,  :coop
    remove_column :qetquotes,  :other
    remove_column :qetquotes,  :primaryres
    remove_column :qetquotes,  :duplex
    remove_column :qetquotes,  :threetofour
    remove_column :qetquotes,  :mobilehome
    remove_column :qetquotes,  :manufacturedhome
    remove_column :qetquotes,  :overthreeyears
    remove_column :qetquotes, :homeyear
    remove_column :qetquotes, :sqft
    remove_column :qetquotes, :beds
    remove_column :qetquotes, :bathrooms
    remove_column :qetquotes, :numstories
    remove_column :qetquotes, :homedesign
    remove_column :qetquotes, :roof
    remove_column :qetquotes, :heating
    remove_column :qetquotes, :foundation
    remove_column :qetquotes, :frame
    remove_column :qetquotes, :material
    remove_column :qetquotes,  :dogs
    remove_column :qetquotes,  :pool
    remove_column :qetquotes,  :tramp
    remove_column :qetquotes,  :rentout
    remove_column :qetquotes,  :homeforbiz
    remove_column :qetquotes, :firstname
    remove_column :qetquotes, :lastname
    remove_column :qetquotes, :birthdate
    remove_column :qetquotes,  :gender
    remove_column :qetquotes, :occupation
    remove_column :qetquotes, :income
    remove_column :qetquotes, :married
    remove_column :qetquotes, :creditscore
  end
end
