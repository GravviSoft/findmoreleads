require "test_helper"

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:beau)
  end

  test 'unsuccessful edit attempt' do
    logged_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: {user: {firstname: "", lastname: "", email: "beau@horse", password: "p", password_confirmation: "word"}}
    assert_template 'users/edit'
  end


  test "successful edit" do

    logged_in_as(@user)
    get edit_user_path(@user)

    assert_template 'users/edit'
    patch user_path(@user), params: { user: {firstname: "Beau", lastname: "Enbag", email: "bo@horse.com", password: "", password_confirmation: "",} }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal "Beau", @user.firstname
    assert_equal "Enbag", @user.lastname
    assert_equal "bo@horse.com", @user.email
  end
end
