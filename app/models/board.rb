class Board < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :recipe_steps
  has_many :images
end
