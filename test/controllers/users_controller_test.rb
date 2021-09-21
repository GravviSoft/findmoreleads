require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:beau)
    @other_user = users(:tony)
  end

  test "should get new" do
    get signup_path
    assert_response :success
    assert_select "title", "Signup | Find More Leads"
  end




  test "should redirect index when not logged in" do
    get users_path
    assert_redirected_to login_url

  end



  test "should redirect to login if not logged in" do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch user_path(@user), params: { user: {firstname: @user.firstname, lastname: @user.lastname, email: @user.email}}
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect to login when logged in as wrong user" do
    logged_in_as(@other_user)
    get edit_user_path(@user)
    assert flash.empty?
    assert_redirected_to root_url
  end

  test "should redirect to update when logged in as wrong user" do
    logged_in_as(@other_user)
    patch user_path(@user), params: { user: {firstname: @user.firstname, lastname: @user.lastname, email: @user.email}}
    assert flash.empty?
    assert_redirected_to root_url
  end




end
