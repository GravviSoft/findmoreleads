require 'test_helper'

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get html_pages_home_url
    assert_response :success
    assert_select "title", "Home | RRDP App"
  end

  test "should get help" do
    get html_pages_help_url
    assert_response :success
    assert_select "title", "Help | RRDP App"

  end

  test "should get about" do
    get html_pages_about_url
    assert_response :success
    assert_select "title", "About | RRDP App"

  end

  test "should get pricing" do
    get html_pages_pricing_url
    assert_response :success
    assert_select "title", "Pricing | RRDP App"

  end

end
