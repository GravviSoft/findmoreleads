require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Test User", email: "test@test.com")
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'name be present' do
    @user.name = "    "
    assert_not @user.valid?
  end

  test 'email be valid' do
    @user.email = "    "
    assert_not @user.valid?
  end

  test 'name cant be to long' do
    @user.name = 'a' * 61
    assert_not @user.valid?
  end

  test 'email cant be to long' do
    @user.email = 'a' * 255 + '@example.com'
    assert_not @user.valid?
  end

  test 'email validation should accept VALID emails' do
    valid_emails = %w[beau@example.com JOHN@test.com MARY_smith-01@new.com tony.smith@example.com tony+smith@example.com]
    valid_emails.each do |valid_email|
      @user.email = valid_email
      assert @user.valid?, "#{valid_email.inspect} should be valid"
    end
  end
  test 'email validation should NOT accept INVALID emails' do
    invalid_emails = %w[test@eample,com test_at_example.com test@example test@ex+example.com]
    invalid_emails.each do |invalid_email|
      @user.email = invalid_email
      assert_not @user.valid?, "#{invalid_email} should be invalid"
    end
  end


  #NO DUPLICATE validation
  test 'no duplicate emails' do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end




 end
