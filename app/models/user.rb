class User < ActiveRecord::Base
  has_many :recipes
  has_many :likes
  before_save { self.email = email.downcase }
  validates :username, presence: true, length: { minimum: 3, maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }

  has_secure_password
end