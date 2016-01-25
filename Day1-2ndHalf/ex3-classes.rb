# # Create a Cookbook and Recipe class that accepts the following.
# mex_cuisine = Cookbook.new("Mexican Cooking")
#
# burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
# # name, ingredients, steps
# mex_cuisine.recipes # []
# mex_cuisine.add_recipe(burrito)


class Cookbook

  attr_accessor :cookbook_name, :recipes

  def initialize(cookbook_name, recipes = [])
    @cookbook_name = cookbook_name
    @recipes = recipes
  end

  def print_cookbook
    puts "*************"
    puts @cookbook_name
    puts "*************"
      @recipes.each { |recipe| recipe.print_recipe }
  end

  def add_recipe(new_recipe)
    @recipes << new_recipe
  end

end


class Recipe

  attr_accessor :name, :ingredients, :steps

  def initialize(name, ingredients, steps)
      @name = name
      @ingredients = ingredients
      @steps = steps
  end

  def print_recipe
    puts "---------------"
    puts "Title: #{@name}"
    puts "---------------"
    puts "Ingredients #{@ingredients}"
    puts "Steps: #{@steps}"
  end

end


mex_cuisine = Cookbook.new("Mexican Cooking")

burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
quesadilla = Recipe.new("Quesadilla", ["corn tortilla", "vegetables", "queso"], ["toast tortilla", "put ingredients in wrap", "fold it"])

mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(quesadilla)


# TEST

mex_cuisine.print_cookbook
