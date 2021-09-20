require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup info' do
    get signup_path
    assert_no_difference "User.count" do
      post users_path, params: { user: {firstname: " ", lastname: " ", email: "tony@horse", password: "hor", password_confirmation: "horse"}}
    end

    assert_template 'users/new'
  end


  test 'valid signup info' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: {firstname: 'Beau', lastname: 'Enslow', email: "beauenslow@gmail.com", password: "password123", password_confirmation: "password123"}  }
    end
    follow_redirect!
    assert_template 'users/show'

  end
end
