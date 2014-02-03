class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
