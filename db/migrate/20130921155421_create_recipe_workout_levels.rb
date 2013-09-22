class CreateRecipeWorkoutLevels < ActiveRecord::Migration
  def change
    create_table :recipe_workout_levels do |t|
      t.integer :recipe_id
      t.integer :workout_level_id

      t.timestamps
    end
  end
end
