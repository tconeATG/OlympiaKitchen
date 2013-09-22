require 'spec_helper'

describe "workout_levels/show" do
  before(:each) do
    @workout_level = assign(:workout_level, stub_model(WorkoutLevel,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
