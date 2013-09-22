class WorkoutLevel < ActiveRecord::Base
  has_many :recipe_workout_levels
  has_many :recipe, :through => :recipe_workout_levels
end
