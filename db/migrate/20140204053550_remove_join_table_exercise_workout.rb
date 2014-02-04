class RemoveJoinTableExerciseWorkout < ActiveRecord::Migration
  def change
    drop_join_table :exercises, :workouts
  end
end
