class CreateRecipeSteps < ActiveRecord::Migration
  def change
    create_table :recipe_steps do |t|
      t.string :step
      t.references :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
