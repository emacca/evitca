class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exercise_workouts
end
