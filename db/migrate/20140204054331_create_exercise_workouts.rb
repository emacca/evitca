class CreateExerciseWorkouts < ActiveRecord::Migration
  def change
    create_table :exercise_workouts do |t|
      t.references :exercise, index: true
      t.references :workout, index: true
      t.integer :reps
      t.integer :times

      t.timestamps
    end
  end
end
