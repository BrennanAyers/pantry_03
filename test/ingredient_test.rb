require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
class IngredientTest < Minitest::Test
  def setup
    @ingredient = Ingredient.new("Fish", "fillet", 100)
  end

  def test_it_exisits
    assert_instance_of Ingredient, @ingredient
  end

  def test_it_has_argument_attributes
    assert_equal "Fish", @ingredient.name
    assert_equal "fillet", @ingredient.unit
    assert_equal 100, @ingredient.calories
  end
end
