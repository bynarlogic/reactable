class CreateNonReactableModels < ActiveRecord::Migration[6.0]
  def change
    create_table :non_reactable_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
