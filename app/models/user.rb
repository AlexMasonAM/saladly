class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_digest, type: String

  has_secure_password #tells rails to have a password_digest

  validates :email, uniqueness: true 
  validates :password, confirmation: true #standard for WDI not in real world
end