class Quote < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :firstname, presence: false

  validates :firstname, presence: true, length: {maximum: 60}
  validates :lastname, presence: true, length: {maximum: 60}
  VALID_EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates :email, presence: true, length: {maximum: 255}, format: { with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: true}
  validates :phone, presence: true, length: {maximum: 60}
  validates :readyornot, length: {maximum: 60}

end
