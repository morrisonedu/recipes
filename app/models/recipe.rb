class Recipe < ActiveRecord::Base
  belongs_to :chef
  validates :name, presence: true, length: {minimum: 5, maximum: 100}
  validates :summary, presence: true, length: {maximum: 250}
  validates :description, presence: true, length: {minimum: 1, maximum: 250}
end