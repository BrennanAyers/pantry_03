require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
class RecipeTest < Minitest::Test
  def setup
    @recipe = Recipe.new("Dinner")
    @fish = Ingredient.new("Fish", "fillet", 100)
  end

  def test_it_exisits
    assert_instance_of Recipe, @recipe
  end

  def test_it_has_a_name
    assert_equal "Dinner", @recipe.name
  end

  def test_it_can_add_ingredients
    @recipe.add_ingredient(@fish, 2)

    assert_equal [@fish], @recipe.ingredients
  end
end
