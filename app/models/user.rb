class User < ApplicationRecord
  has_many :cat_dates
  has_many :cats, through: :cat_dates
  has_secure_password
end
