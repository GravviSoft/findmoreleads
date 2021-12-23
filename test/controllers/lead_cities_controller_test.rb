require "test_helper"

class LeadCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead_city = lead_cities(:one)
  end

  test "should get index" do
    get lead_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_lead_city_url
    assert_response :success
  end

  test "should create lead_city" do
    assert_difference('LeadCity.count') do
      post lead_cities_url, params: { lead_city: { address: @lead_city.address, city: @lead_city.city, company: @lead_city.company, created_at: @lead_city.created_at, date: @lead_city.date, email: @lead_city.email, email_clicks: @lead_city.email_clicks, email_opens: @lead_city.email_opens, email_optout: @lead_city.email_optout, email_replies: @lead_city.email_replies, email_sent: @lead_city.email_sent, facebook: @lead_city.facebook, industry: @lead_city.industry, phone: @lead_city.phone, rvm_drorp: @lead_city.rvm_drorp, search_radius: @lead_city.search_radius, state: @lead_city.state, valid_email: @lead_city.valid_email, vmd_optout: @lead_city.vmd_optout, website: @lead_city.website, zip: @lead_city.zip } }
    end

    assert_redirected_to lead_city_url(LeadCity.last)
  end

  test "should show lead_city" do
    get lead_city_url(@lead_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_lead_city_url(@lead_city)
    assert_response :success
  end

  test "should update lead_city" do
    patch lead_city_url(@lead_city), params: { lead_city: { address: @lead_city.address, city: @lead_city.city, company: @lead_city.company, created_at: @lead_city.created_at, date: @lead_city.date, email: @lead_city.email, email_clicks: @lead_city.email_clicks, email_opens: @lead_city.email_opens, email_optout: @lead_city.email_optout, email_replies: @lead_city.email_replies, email_sent: @lead_city.email_sent, facebook: @lead_city.facebook, industry: @lead_city.industry, phone: @lead_city.phone, rvm_drorp: @lead_city.rvm_drorp, search_radius: @lead_city.search_radius, state: @lead_city.state, valid_email: @lead_city.valid_email, vmd_optout: @lead_city.vmd_optout, website: @lead_city.website, zip: @lead_city.zip } }
    assert_redirected_to lead_city_url(@lead_city)
  end

  test "should destroy lead_city" do
    assert_difference('LeadCity.count', -1) do
      delete lead_city_url(@lead_city)
    end

    assert_redirected_to lead_cities_url
  end
end
