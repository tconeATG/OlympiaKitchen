class WorkoutLevelsController < ApplicationController
  # GET /workout_levels
  # GET /workout_levels.json
  def index
    @workout_levels = WorkoutLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workout_levels }
    end
  end

  # GET /workout_levels/1
  # GET /workout_levels/1.json
  def show
    @workout_level = WorkoutLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout_level }
    end
  end

  # GET /workout_levels/new
  # GET /workout_levels/new.json
  def new
    @workout_level = WorkoutLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout_level }
    end
  end

  # GET /workout_levels/1/edit
  def edit
    @workout_level = WorkoutLevel.find(params[:id])
  end

  # POST /workout_levels
  # POST /workout_levels.json
  def create
    @workout_level = WorkoutLevel.new(params[:workout_level])

    respond_to do |format|
      if @workout_level.save
        format.html { redirect_to @workout_level, notice: 'Workout level was successfully created.' }
        format.json { render json: @workout_level, status: :created, location: @workout_level }
      else
        format.html { render action: "new" }
        format.json { render json: @workout_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workout_levels/1
  # PUT /workout_levels/1.json
  def update
    @workout_level = WorkoutLevel.find(params[:id])

    respond_to do |format|
      if @workout_level.update_attributes(params[:workout_level])
        format.html { redirect_to @workout_level, notice: 'Workout level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_levels/1
  # DELETE /workout_levels/1.json
  def destroy
    @workout_level = WorkoutLevel.find(params[:id])
    @workout_level.destroy

    respond_to do |format|
      format.html { redirect_to workout_levels_url }
      format.json { head :no_content }
    end
  end
end
