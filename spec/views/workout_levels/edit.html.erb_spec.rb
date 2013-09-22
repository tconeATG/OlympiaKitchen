require 'spec_helper'

describe "workout_levels/edit" do
  before(:each) do
    @workout_level = assign(:workout_level, stub_model(WorkoutLevel,
      :name => "MyString"
    ))
  end

  it "renders the edit workout_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workout_levels_path(@workout_level), :method => "post" do
      assert_select "input#workout_level_name", :name => "workout_level[name]"
    end
  end
end
