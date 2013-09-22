class Tag < ActiveRecord::Base
  has_many :recipe_tags
  has_many :user_tags
  has_many :recipe, :through => :recipe_tags
  has_many :users, :through => :user_tags
end
