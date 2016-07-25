class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name_of_food
      t.references :category, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
