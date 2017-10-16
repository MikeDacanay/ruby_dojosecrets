class User < ActiveRecord::Base
EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  before_save :downcase_email

  private
  	def downcase_email
  		self.email.downcase!
  	end
end
