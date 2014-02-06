User.destroy_all
Workout.destroy_all
Exercise.destroy_all
ExerciseWorkout.destroy_all

user = User.new 
user.email = 'emacca@me.com'
user.password = 'password'
user.password_confirmation = 'password'
user.save


Exercise.create(
  :name => 'Push Ups',
  :image => 'http://www.weightloss-tips4u.com/wp-content/uploads/2012/07/classic-push-up_push-up-variations.jpg',
  :description => 'The push up may just be the perfect total body exercise that builds both upper body and core strength. Done properly, it is a compound exercise that uses muscles in the chest, shoulders, triceps, back, abs and even the legs.',
  :category => 'Upper Body'
)


Exercise.create(
  :name => 'Bicep Curl',
  :image => 'http://www.menshealth.co.uk/cm/menshealthuk/images/pV/DB-bicep-curl-plan-b-13062012-de.jpg',
  :description => 'The barbell curl specifically targets the biceps brachii which is located on the front part of the arm between the shoulder and the elbow.',
  :category => 'Upper Body'
)

Exercise.create(
  :name => 'Push Press',
  :image => 'http://www.womenshealthmag.com/files/images/0609_push_press.jpg',
  :description => 'The push press is practically the same as the military press; however, the movement is started by a push from the legs. This begins the momentum of the movement, the weight is then slowly lowered back to the shoulders.',
  :category => 'Upper Body'
)


Exercise.create(
  :name => 'Chest Press',
  :image => 'http://www.womenshealthmag.com/files/images/0906-dbell-chest-press.jpg',
  :description => 'Sit down on bench with dumbbells resting on lower thigh. Kick weights to shoulder and lie back. Position dumbbells to sides of chest with bent arm under each dumbbell.',
  :category => 'Upper Body'
)

Exercise.create(
  :name => 'Squats',
  :image => 'http://www.othings.com/wp-content/uploads/2013/05/bootcamp-squats.jpg',
  :description => 'The squat is a compound, full body exercise that trains primarily the muscles of the thighs, hips and buttocks. ',
  :category => 'Lower Body'
)

ExerciseWorkout.create(
  :exercise_id => Exercise.first.id,
  :workout_id => Workout.first.id,
  :reps => 15,
  :times => 3
)