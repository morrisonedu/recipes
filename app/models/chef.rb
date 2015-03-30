class Chef < ActiveRecord::Base
  has_many :recipes
  validates :chefname, presence: true, length: {minimum: 2, maximum: 50}
  VALID_EMAIL_REGEX = /@/
  validates :email, presence: true, length: {maximum: 105}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
end