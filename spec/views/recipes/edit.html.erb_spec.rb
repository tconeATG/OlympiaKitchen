require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :recipe => "MyText",
      :ingredients => "MyText",
      :time_til_grub => 1,
      :skill => 1,
      :rank => 1,
      :image => "MyString"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path(@recipe), :method => "post" do
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
