class Chef < ActiveRecord::Base
  validates :chefname, presence: true, length: {minimum: 2, maximum: 50}
  validates :email, presence: true, length: {maximum: 105}
end