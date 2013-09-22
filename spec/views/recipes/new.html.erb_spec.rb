require 'spec_helper'

describe "recipes/new" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :recipe => "MyText",
      :ingredients => "MyText",
      :time_til_grub => 1,
      :skill => 1,
      :rank => 1,
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path, :method => "post" do
      assert_select "input#recipe_name", :name => "recipe[name]"
      assert_select "textarea#recipe_recipe", :name => "recipe[recipe]"
      assert_select "textarea#recipe_ingredients", :name => "recipe[ingredients]"
      assert_select "input#recipe_time_til_grub", :name => "recipe[time_til_grub]"
      assert_select "input#recipe_skill", :name => "recipe[skill]"
      assert_select "input#recipe_rank", :name => "recipe[rank]"
      assert_select "input#recipe_image", :name => "recipe[image]"
    end
  end
end
