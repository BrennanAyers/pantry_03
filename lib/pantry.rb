class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    if @stock.keys.include?(ingredient)
      @stock[ingredient]
    else
      0
    end
  end

  def restock(ingredient, count)
    @stock[ingredient] += count
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients.each do |ingredient|
      if !@stock.keys.include?(ingredient)
        return false
      elsif @stock[ingredient] < recipe.quantity_of(ingredient)
        return false
      end
    end
    true
  end
end
