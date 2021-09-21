class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :firstname, presence: true, length: {maximum: 60}
  validates :lastname, presence: true, length: {maximum: 60}

  VALID_EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: true}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true

  #computational code to compute hash
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
