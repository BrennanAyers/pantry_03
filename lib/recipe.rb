class Recipe
  attr_reader :name

  def initialize(name)
    @name = name
    @ingredients = {}
  end

  def add_ingredient(ingredient, quantity)
    @ingredients[ingredient] = quantity
  end

  def ingredients
    @ingredients.keys
  end

  def quantity_of(ingredient)
    @ingredients[ingredient]
  end
end
