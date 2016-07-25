class Board < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :recipe_steps, dependent: :destroy
  has_many :images, dependent: :destroy 
end
