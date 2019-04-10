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
    if ingredients.include?(ingredient)
      @ingredients[ingredient]
    else
      0
    end
  end

  def total_calories
    @ingredients.keys.sum do |ingredient|
      ingredient.calories * @ingredients[ingredient]
    end
  end

  def ingredient_summary(ingredient)
    {
      ingredient: ingredient.name,
      amount: self.quantity_of(ingredient).to_s + " " + ingredient.unit
    }
  end

  def summary
    {
      name: self.name,
      details: {
        ingredients: self.ingredients.map do |ingredient|
          ingredient_summary(ingredient)
        end,
        total_calories: self.total_calories
      }
    }
  end
end
