class ExerciseWorkoutsController < ApplicationController
  before_action :set_exercise_workouts, only: [:edit, :update]

def edit
end

def update 

  if @exercise_workouts.update(exercise_workouts_params)
  redirect_to @exercise_workouts.workout, notice: 'Exercise was successfully updated.' 
  else
  render action: 'edit' 
  end

end

private 

def set_exercise_workouts
  @exercise_workouts = ExerciseWorkout.find(params[:id]) 
end

def exercise_workouts_params
      params.require(:exercise_workout).permit(:reps, :times, :exercise_id, :workout_id)
    end
end
