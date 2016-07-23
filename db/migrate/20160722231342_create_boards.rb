class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name_of_food

      t.timestamps null: false
    end
  end
end
