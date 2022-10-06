module RecipesHelper
  def calc_preparation_time(recipe)
    duration = recipe.preparation_time * 60
    time = Time.at(duration).utc.strftime("%H:%M:%S")
  end 
end
