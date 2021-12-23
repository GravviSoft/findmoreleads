require "application_system_test_case"

class LeadCitiesTest < ApplicationSystemTestCase
  setup do
    @lead_city = lead_cities(:one)
  end

  test "visiting the index" do
    visit lead_cities_url
    assert_selector "h1", text: "Lead Cities"
  end

  test "creating a Lead city" do
    visit lead_cities_url
    click_on "New Lead City"

    fill_in "Address", with: @lead_city.address
    fill_in "City", with: @lead_city.city
    fill_in "Company", with: @lead_city.company
    fill_in "Created at", with: @lead_city.created_at
    fill_in "Date", with: @lead_city.date
    fill_in "Email", with: @lead_city.email
    fill_in "Email clicks", with: @lead_city.email_clicks
    fill_in "Email opens", with: @lead_city.email_opens
    check "Email optout" if @lead_city.email_optout
    fill_in "Email replies", with: @lead_city.email_replies
    fill_in "Email sent", with: @lead_city.email_sent
    fill_in "Facebook", with: @lead_city.facebook
    fill_in "Industry", with: @lead_city.industry
    fill_in "Phone", with: @lead_city.phone
    fill_in "Rvm drorp", with: @lead_city.rvm_drorp
    fill_in "Search radius", with: @lead_city.search_radius
    fill_in "State", with: @lead_city.state
    fill_in "Valid email", with: @lead_city.valid_email
    check "Vmd optout" if @lead_city.vmd_optout
    fill_in "Website", with: @lead_city.website
    fill_in "Zip", with: @lead_city.zip
    click_on "Create Lead city"

    assert_text "Lead city was successfully created"
    click_on "Back"
  end

  test "updating a Lead city" do
    visit lead_cities_url
    click_on "Edit", match: :first

    fill_in "Address", with: @lead_city.address
    fill_in "City", with: @lead_city.city
    fill_in "Company", with: @lead_city.company
    fill_in "Created at", with: @lead_city.created_at
    fill_in "Date", with: @lead_city.date
    fill_in "Email", with: @lead_city.email
    fill_in "Email clicks", with: @lead_city.email_clicks
    fill_in "Email opens", with: @lead_city.email_opens
    check "Email optout" if @lead_city.email_optout
    fill_in "Email replies", with: @lead_city.email_replies
    fill_in "Email sent", with: @lead_city.email_sent
    fill_in "Facebook", with: @lead_city.facebook
    fill_in "Industry", with: @lead_city.industry
    fill_in "Phone", with: @lead_city.phone
    fill_in "Rvm drorp", with: @lead_city.rvm_drorp
    fill_in "Search radius", with: @lead_city.search_radius
    fill_in "State", with: @lead_city.state
    fill_in "Valid email", with: @lead_city.valid_email
    check "Vmd optout" if @lead_city.vmd_optout
    fill_in "Website", with: @lead_city.website
    fill_in "Zip", with: @lead_city.zip
    click_on "Update Lead city"

    assert_text "Lead city was successfully updated"
    click_on "Back"
  end

  test "destroying a Lead city" do
    visit lead_cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lead city was successfully destroyed"
  end
end
