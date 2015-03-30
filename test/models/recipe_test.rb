require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @recipe = Recipe.new(name: "Chx Parm", summary: "Best dish ever", description: "chicken, sauce, cheese, etc");
  end
  
  test "recipe should be valid" do 
    assert @recipe.valid?
  end
  
  test "recipe name less than 100 char" do
    @recipe.name="a"*150
    assert_not @recipe.valid?
  end
  
  
end