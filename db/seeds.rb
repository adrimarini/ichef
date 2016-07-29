# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Board.destroy_all
Category.destroy_all

categories = Category.create([
  {name: "Breakfast"},
  {name: "Brunch"},
  {name: "Lunch"},
  {name: "Dinner"},
  {name: "Dessert"}
  ])


board1 = Board.create({name_of_food: "Pasta Pomedoro", category: Category.find_by(name: "Dinner"), user: User.last})
board2 = Board.create({name_of_food:"Chocolate Cake", category: Category.find_by(name: "Dessert"), user: User.last})
board3 = Board.create({name_of_food: "Morning Bun", category: Category.find_by(name: "Breakfast"), user:User.last})
board4 = Board.create({name_of_food: "Yogurt Parfait", category: Category.find_by(name: "Breakfast"), user:User.last})
board5 = Board.create({name_of_food: "Chinese Chicken Salad", category: Category.find_by(name: "Breakfast"), user:User.last})
board6 = Board.create({name_of_food: "Creme Brulee", category: Category.find_by(name: "Breakfast"), user:User.last})

recipe_steps = RecipeStep.create([
  {step: "Get 4 sticks of butter and set aside", board: board1 },
  {step: "Start with adding one cup of flour to a large mixing bowl", board: Board.last}
])

images = Image.create([
  {url: "http://www.eatgood4life.com/wp-content/uploads/2014/04/fired-roasted-pasta.jpg", board: board1 },
  {url: "http://www.chefpy.com/wp-content/uploads/2015/10/chocolate-cake.jpg", board: board2},
  {url: "http://www.ezrapoundcake.com/wp-content/uploads/2008/09/cinnamonroll1.jpg", board: board3},
  {url: "http://thisbeautifuldayblog.com/wp-content/uploads/2013/11/Yogurt-Parfait.jpg", board: board4},
  {url: "http://www.gimmesomeoven.com/wp-content/uploads/2013/04/Lighter-Chinese-Chicken-Salad-1.jpg", board: board5},
  {url: "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/7/26/1/EA0914_creme-brulee_s4x3.jpg", board: board6}
])
