require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @user = User.create(username: "bob", email: "bob@example.com")
    @recipe = @user.recipes.build(name: "chicken parm", summary: "this is the best chicken parm recipe ever",
              description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes")
  end
  
  test "recipe must be valid" do
    assert @recipe.valid?    
  end
  
  test "user_id must be present" do
    @recipe.user_id = nil
    assert_not @recipe.valid?
  end
  
  test "name must be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end
  
  test "name length must not be too long" do
    @recipe.name = "a" * 101
    assert_not @recipe.valid?
  end
  
  test "name length must not be too short" do
    @recipe.name = "aaaa"
    assert_not @recipe.valid?
  end
  
  test "summary must be present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end
  
  test "summary length must not be too long" do
    @recipe.summary = "a" * 151
    assert_not @recipe.valid?
  end
  
  test "summary length must not be too short" do
    @recipe.summary = "a" * 9
    assert_not @recipe.valid?
  end
  
  test "description must be present" do
    @recipe.description = " "
    assert_not @recipe.valid?
  end
  
  test "description must not be too long" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end
  
  test "description must not be too short" do
    @recipe.description = "a" * 19
    assert_not @recipe.valid?
  end
  
end