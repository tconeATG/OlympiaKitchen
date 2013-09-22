require 'spec_helper'

describe "workout_levels/new" do
  before(:each) do
    assign(:workout_level, stub_model(WorkoutLevel,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new workout_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => workout_levels_path, :method => "post" do
      assert_select "input#workout_level_name", :name => "workout_level[name]"
    end
  end
end
