class RecipesController < ApplicationController
  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipes }
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients.split(',').map(&:strip)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/new
  # GET /recipes/new.json
  def new
    @recipe = Recipe.new
    @tags = Tag.all
    @workout_levels = WorkoutLevel.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/1/edit
  def edit
    @tags = Tag.all
    @recipe = Recipe.find(params[:id])
    @workout_levels = WorkoutLevel.all
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(params[:recipe])

    respond_to do |format|
      if @recipe.save
        if params[:tags]
          params[:tags].each do | tag |
            @recipe_tag = RecipeTag.new
            @recipe_tag.recipe_id = @recipe.id
            @recipe_tag.tag_id = tag
            if RecipeTag.find_all_by_recipe_id_and_tag_id(@recipe.id, tag).length == 0
               @recipe_tag.save
            end
          end
        end
        if params[:workout_levels]
          params[:workout_levels].each do | wl |
            @recipe_wl = RecipeWorkoutLevel.new
            @recipe_wl.recipe_id = @recipe.id
            @recipe_wl.workout_level_id = wl
            if RecipeWorkoutLevel.find_all_by_recipe_id_and_workout_level_id(@recipe.id, wl).length == 0
               @recipe_wl.save
            end
          end
        end
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render json: @recipe, status: :created, location: @recipe }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        if params[:tags]
          params[:tags].each do | tag |
            @recipe_tag = RecipeTag.new
            @recipe_tag.recipe_id = @recipe.id
            @recipe_tag.tag_id = tag
            if RecipeTag.find_all_by_recipe_id_and_tag_id(@recipe.id, tag).length == 0
               @recipe_tag.save
            end
          end
        end
        if params[:workout_levels]
          params[:workout_levels].each do | wl |
            @recipe_wl = RecipeWorkoutLevel.new
            @recipe_wl.recipe_id = @recipe.id
            @recipe_wl.workout_level_id = wl
            if RecipeWorkoutLevel.find_all_by_recipe_id_and_workout_level_id(@recipe.id, wl).length == 0
               @recipe_wl.save
            end
          end
        end
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
   @recipes = Recipe.all
   render :layout => false
  end
  
  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end
end
