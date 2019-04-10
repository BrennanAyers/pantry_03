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

  def test_it_can_check_stock_for_an_item
    assert_equal 0, @pantry.stock_check(@fish)
  end

  def test_it_can_restock_an_item
    assert_equal 0, @pantry.stock_check(@fish)

    @pantry.restock(@fish, 2)
    assert_equal 2, @pantry.stock_check(@fish)
  end
end