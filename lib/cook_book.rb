class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    recipes << recipe
  end

  def summary
    recipes.map do |recipe|
      {
        name: recipe.name,
        details: {
          ingredients: recipe.ingredients.map do |ingredient|
            {
              ingredient: ingredient.name,
              amount: recipe.quantity_of(ingredient).to_s + " " + ingredient.unit
            }
          end,
          total_calories: recipe.total_calories
        }
      }
    end
  end
end
