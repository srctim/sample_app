class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  #validates(:name, presence: true)
  validates :name, length: {maximum: 50}, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  #has_secure_password
end
