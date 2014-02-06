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
  :description => 'The barbell curl specifically targets the biceps brachii which is located on the front part of the arm between the shoulder and the elbow.The barbell curl specifically targets the biceps brachii which is located on the front part of the arm between the shoulder and the elbow. 
  The barbell curl specifically targets the biceps brachii which is located on the front part of the arm between the shoulder and the elbow.
  The barbell curl specifically targets the biceps brachii which is located on the front part of the arm between the shoulder and the elbow.',
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

Exercise.create(
  :name => 'Sit Up',
  :image => 'http://peakphysio.ie/wp-content/uploads/2013/05/sit-up.jpg',
  :description => 'an exercise in which a person lies flat on the back, lifts the torso to a sitting position, and then lies flat again without changing the position of the legs: formerly done with the legs straight but now usu. done with the knees bent.',
  :category => 'Core'
)

Exercise.create(
  :name => 'Crunches',
  :image => 'http://www.womenshealthmag.com/files/images/bootcamp-elbow-knee-crunch.jpg',
  :description => 'A crunch begins with lying face up on the floor with knees bent. The movement begins by curling the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.',
  :category => 'Core'
)

Exercise.create(
  :name => 'Rower',
  :image => 'http://www.mrtreadmill.com.au/images/R100APM-Infiniti-Iron-Woman-Rower.jpg',
  :description => 'The rowing machine can be intimidating, but once you get the hang of it, its an effective way to spice up your cardio routine. ',
  :category => 'Cardio'
)

Exercise.create(
  :name => 'Spin Bike',
  :image => 'http://www.exerciseequipmentwarehouse.com/blog/wp-content/uploads/2013/04/st.-helena-ca-spin-bike-store.jpg',
  :description => 'Spinning classes or other indoor cycling workouts can be a great way to get in a vigorous workout -- burning calories and keeping your muscles in shape -- especially during the off-season. ',
  :category => 'Cardio'
)

Exercise.create(
  :name => 'Lunges',
  :image => 'http://www.menshealth.co.uk/cm/menshealthuk/images/Xz/lunge-maximise-every-muscle-fricker-20042012-mdn.jpg',
  :description => 'The lunge is a classic fitness exercise for the lower body, which help sth eflexibility of the hips and hamstrings, and the strength of the buttocks, hamstrings and hip flexors.',
  :category => 'Lower Body'
)
ExerciseWorkout.create(
  :exercise_id => Exercise.first.id,
  :workout_id => Workout.first.id,
  :reps => 15,
  :times => 3
)