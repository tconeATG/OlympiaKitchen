class Recipe < ActiveRecord::Base
  has_many :recipe_tags
  has_many :tags, :through => :recipe_tags
  has_many :workout_levels, :through => :recipe_workout_levels
end
