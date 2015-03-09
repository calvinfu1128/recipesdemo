class RecipesIngredients < ActiveRecord::Migration
  def change
    create_table :recipes_ingredients do |t|
    t.integer :ingredient_id, :recipe_id
    end
  end
end
