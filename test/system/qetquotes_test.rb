require "application_system_test_case"

class QetquotesTest < ApplicationSystemTestCase
  setup do
    @qetquote = qetquotes(:one)
  end

  test "visiting the index" do
    visit qetquotes_url
    assert_selector "h1", text: "Qetquotes"
  end

  test "creating a Qetquote" do
    visit qetquotes_url
    click_on "New Qetquote"

    fill_in "Address", with: @qetquote.address
    fill_in "Bathrooms", with: @qetquote.bathrooms
    fill_in "Beds", with: @qetquote.beds
    fill_in "Birthdate", with: @qetquote.birthdate
    fill_in "Comparing", with: @qetquote.comparing
    fill_in "Condo", with: @qetquote.condo
    fill_in "Coop", with: @qetquote.coop
    fill_in "Creditscore", with: @qetquote.creditscore
    fill_in "Currentinscomp", with: @qetquote.currentinscomp
    fill_in "Currentrate", with: @qetquote.currentrate
    fill_in "Deciding", with: @qetquote.deciding
    fill_in "Dogs", with: @qetquote.dogs
    fill_in "Duplex", with: @qetquote.duplex
    fill_in "Firstname", with: @qetquote.firstname
    fill_in "Foundation", with: @qetquote.foundation
    fill_in "Frame", with: @qetquote.frame
    fill_in "Gender", with: @qetquote.gender
    fill_in "Heating", with: @qetquote.heating
    fill_in "Homedesign", with: @qetquote.homedesign
    fill_in "Homeforbiz", with: @qetquote.homeforbiz
    fill_in "Homeyear", with: @qetquote.homeyear
    fill_in "Income", with: @qetquote.income
    fill_in "Lastname", with: @qetquote.lastname
    fill_in "Manufacturedhome", with: @qetquote.manufacturedhome
    fill_in "Married", with: @qetquote.married
    fill_in "Material", with: @qetquote.material
    fill_in "Mobilehome", with: @qetquote.mobilehome
    fill_in "Numstories", with: @qetquote.numstories
    fill_in "Occupation", with: @qetquote.occupation
    fill_in "Other", with: @qetquote.other
    fill_in "Overthreeyears", with: @qetquote.overthreeyears
    fill_in "Ownhome", with: @qetquote.ownhome
    fill_in "Pool", with: @qetquote.pool
    fill_in "Primaryres", with: @qetquote.primaryres
    fill_in "Ready", with: @qetquote.ready
    fill_in "Rentout", with: @qetquote.rentout
    fill_in "Roof", with: @qetquote.roof
    fill_in "Singlefam", with: @qetquote.singlefam
    fill_in "Sqft", with: @qetquote.sqft
    fill_in "Threetofour", with: @qetquote.threetofour
    fill_in "Tramp", with: @qetquote.tramp
    fill_in "Zip", with: @qetquote.zip
    click_on "Create Qetquote"

    assert_text "Qetquote was successfully created"
    click_on "Back"
  end

  test "updating a Qetquote" do
    visit qetquotes_url
    click_on "Edit", match: :first

    fill_in "Address", with: @qetquote.address
    fill_in "Bathrooms", with: @qetquote.bathrooms
    fill_in "Beds", with: @qetquote.beds
    fill_in "Birthdate", with: @qetquote.birthdate
    fill_in "Comparing", with: @qetquote.comparing
    fill_in "Condo", with: @qetquote.condo
    fill_in "Coop", with: @qetquote.coop
    fill_in "Creditscore", with: @qetquote.creditscore
    fill_in "Currentinscomp", with: @qetquote.currentinscomp
    fill_in "Currentrate", with: @qetquote.currentrate
    fill_in "Deciding", with: @qetquote.deciding
    fill_in "Dogs", with: @qetquote.dogs
    fill_in "Duplex", with: @qetquote.duplex
    fill_in "Firstname", with: @qetquote.firstname
    fill_in "Foundation", with: @qetquote.foundation
    fill_in "Frame", with: @qetquote.frame
    fill_in "Gender", with: @qetquote.gender
    fill_in "Heating", with: @qetquote.heating
    fill_in "Homedesign", with: @qetquote.homedesign
    fill_in "Homeforbiz", with: @qetquote.homeforbiz
    fill_in "Homeyear", with: @qetquote.homeyear
    fill_in "Income", with: @qetquote.income
    fill_in "Lastname", with: @qetquote.lastname
    fill_in "Manufacturedhome", with: @qetquote.manufacturedhome
    fill_in "Married", with: @qetquote.married
    fill_in "Material", with: @qetquote.material
    fill_in "Mobilehome", with: @qetquote.mobilehome
    fill_in "Numstories", with: @qetquote.numstories
    fill_in "Occupation", with: @qetquote.occupation
    fill_in "Other", with: @qetquote.other
    fill_in "Overthreeyears", with: @qetquote.overthreeyears
    fill_in "Ownhome", with: @qetquote.ownhome
    fill_in "Pool", with: @qetquote.pool
    fill_in "Primaryres", with: @qetquote.primaryres
    fill_in "Ready", with: @qetquote.ready
    fill_in "Rentout", with: @qetquote.rentout
    fill_in "Roof", with: @qetquote.roof
    fill_in "Singlefam", with: @qetquote.singlefam
    fill_in "Sqft", with: @qetquote.sqft
    fill_in "Threetofour", with: @qetquote.threetofour
    fill_in "Tramp", with: @qetquote.tramp
    fill_in "Zip", with: @qetquote.zip
    click_on "Update Qetquote"

    assert_text "Qetquote was successfully updated"
    click_on "Back"
  end

  test "destroying a Qetquote" do
    visit qetquotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qetquote was successfully destroyed"
  end
end
