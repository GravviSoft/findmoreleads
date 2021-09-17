require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup info' do
    get signup_path
    assert_no_difference "User.count" do
      post users_path, params: { user: {name: " ", email: "tony@horse", password: "hor", password_confirmation: "horse"}}
    end

    assert_template 'users/new'
  end
end
