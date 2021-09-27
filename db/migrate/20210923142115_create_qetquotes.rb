class CreateQetquotes < ActiveRecord::Migration[6.1]
  def change
    create_table :qetquotes do |t|
      t.integer :zip
      t.boolean :ownhome
      t.boolean :deciding
      t.boolean :comparing
      t.boolean :ready
      t.string :currentinscomp
      t.integer :currentrate
      t.string :address
      t.boolean :singlefam
      t.boolean :condo
      t.boolean :coop
      t.boolean :other
      t.boolean :primaryres
      t.boolean :duplex
      t.boolean :threetofour
      t.boolean :mobilehome
      t.boolean :manufacturedhome
      t.boolean :overthreeyears
      t.integer :homeyear
      t.integer :sqft
      t.string :beds
      t.string :bathrooms
      t.string :numstories
      t.string :homedesign
      t.string :roof
      t.string :heating
      t.string :foundation
      t.string :frame
      t.string :material
      t.boolean :dogs
      t.boolean :pool
      t.boolean :tramp
      t.boolean :rentout
      t.boolean :homeforbiz
      t.string :firstname
      t.string :lastname
      t.string :birthdate
      t.boolean :gender
      t.string :occupation
      t.integer :income
      t.string :married
      t.integer :creditscore

      t.timestamps
    end
  end
end
