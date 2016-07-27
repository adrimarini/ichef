class Board < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :recipe_steps, dependent: :destroy
  has_many :images, dependent: :destroy

  def main_image
    if self.images.count > 0
      self.images.first.url
    else
      "http://lorempixel.com/350/400/food/"
    end
  end
end
