require "spec_helper"

describe WorkoutLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/workout_levels").should route_to("workout_levels#index")
    end

    it "routes to #new" do
      get("/workout_levels/new").should route_to("workout_levels#new")
    end

    it "routes to #show" do
      get("/workout_levels/1").should route_to("workout_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/workout_levels/1/edit").should route_to("workout_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/workout_levels").should route_to("workout_levels#create")
    end

    it "routes to #update" do
      put("/workout_levels/1").should route_to("workout_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/workout_levels/1").should route_to("workout_levels#destroy", :id => "1")
    end

  end
end
