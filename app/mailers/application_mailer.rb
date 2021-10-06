class ApplicationMailer < ActionMailer::Base
  default :from => 'any_from_address@example.com'
  layout 'mailer'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  # def send_signup_email(user)
  #   @user = Qetquote
  #   mail( :to => @user.email,
  #   :subject => 'Thanks for signing up for our amazing app' )
  # end
end
