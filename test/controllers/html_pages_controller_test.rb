require 'test_helper'

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Find More Leads"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Find More Leads"

  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Find More Leads"

  end

  test "should get pricing" do
    get pricing_path
    assert_response :success
    assert_select "title", "Pricing | Find More Leads"

  end
  test "should get register page" do
    get register_path
    assert_response :success
    assert_select "title", "Register | Find More Leads"
  end
  test "should get login page" do
    get login_path
    assert_response :success
    assert_select "title", "Login | Find More Leads"
  end
end
