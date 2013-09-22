require 'spec_helper'

describe "workout_levels/index" do
  before(:each) do
    assign(:workout_levels, [
      stub_model(WorkoutLevel,
        :name => "Name"
      ),
      stub_model(WorkoutLevel,
        :name => "Name"
      )
    ])
  end

  it "renders a list of workout_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
