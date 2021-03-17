class User < ApplicationRecord
  rolify 
  has_paper_trail 
  has_secure_password
  PASSWORD_REQUIREMENTS = /\A
    (?=.{8,})
  /x

  enum status: {
    active: 0,
    disabled: 1
  }

  validates_presence_of :email, :password_digest
  validates :password, format: PASSWORD_REQUIREMENTS
  validates :email, uniqueness: true

  has_many :user_actions
end
