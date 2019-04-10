require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require './lib/pantry'
class PantryTest < Minitest::Test
  def setup
    @pantry = Pantry.new
    @recipe = Recipe.new("Dinner")
    @fish = Ingredient.new("Fish", "fillet", 100)
    @rice = Ingredient.new("Rice", "oz", 15)
  end

  def test_it_exisits
    assert_instance_of Pantry, @pantry
  end

  def test_it_starts_with_no_stock
    expected = {}
    assert_equal expected, @pantry.stock
  end
end
