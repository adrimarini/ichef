# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Board.destroy_all
Category.destroy_all
Image.destroy_all

categories = Category.create([
  {name: "Breakfast"},
  {name: "Brunch"},
  {name: "Lunch"},
  {name: "Dinner"},
  {name: "Dessert"}
  ])

boards = Board.create([
  {name_of_food: "Pasta Pomedoro", category: Category.find_by(name: "Dinner")},
  {name_of_food: "Chocolate Cake", category: Category.find_by(name: "Dessert")},
  {name_of_food: "Morning Bun", category: Category.find_by(name: "Breakfast")}
])

recipe_steps = Recipe_step.create([
  {step: "Get 4 sticks of butter and set aside", board: Board.first },
  {step: "Start with adding one cup of flour to a large mixing bowl", board: Board.last}
])

images = Image.create([
  {url: "http://placekitten.com/200/300", board: Board.first },
  {url: "http://placekitten.com/200/300", board: Board.last}
])
