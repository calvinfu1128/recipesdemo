class RenameRecipeIngredients < ActiveRecord::Migration
  def change
    rename_table :recipes_ingredients, :recipe_ingredients
  end
end
