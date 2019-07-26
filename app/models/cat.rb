class Cat < ApplicationRecord
  has_many :cat_dates
  has_many :users, through: :cat_dates

end
