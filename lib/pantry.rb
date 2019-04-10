class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    if @stock.keys.include?(ingredient)
      @stock[ingredient]
    else
      0
    end
  end
end
