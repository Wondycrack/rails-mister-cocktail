class RemoveIngredientAndDoseFromCocktail < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :ingredient
    remove_column :cocktails, :dose
  end
end
