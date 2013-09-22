class RecipeWorkoutLevel < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :workout_level
end
