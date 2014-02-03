User.destroy_all
Workout.destroy_all
Exercise.destroy_all


User.create(
  :name => 'Emily'
)

Workout.create(
  :day => 'Monday',
  :name => 'Cardio',
  :user_id => User.first.id
)

Workout.create(
  :day => 'Tuesday',
  :name => 'Legs Day',
  :user_id => User.first.id
)

Workout.create(
  :day => 'Wednesday',
  :name => 'Arms Day',
  :user_id => User.first.id
)

Workout.create(
  :day => 'Thursday',
  :name => 'Squats',
  :user_id => User.first.id
)

Workout.create(
  :day => 'Friday',
  :name => 'Cardio',
  :user_id => User.first.id
)

Workout.create(
  :day => 'Saturday',
  :name => 'HIIT',
  :user_id => User.first.id
)

Workout.create(
  :day => 'Sunday',
  :name => 'LISS',
  :user_id => User.first.id
)

Exercise.create(
  :name => 'Push Ups',
  :image => 'http://www.weightloss-tips4u.com/wp-content/uploads/2012/07/classic-push-up_push-up-variations.jpg',
  :description => 'The push up may just be the perfect total body exercise that builds both upper body and core strength. Done properly, it is a compound exercise that uses muscles in the chest, shoulders, triceps, back, abs and even the legs.',
  :category => 'Tricep'
)


Exercise.create(
  :name => 'Bicep Curl',
  :image => 'http://www.menshealth.co.uk/cm/menshealthuk/images/pV/DB-bicep-curl-plan-b-13062012-de.jpg',
  :description => 'The push up may just be the perfect total body exercise that builds both upper body and core strength. Done properly, it is a compound exercise that uses muscles in the chest, shoulders, triceps, back, abs and even the legs.',
  :category => 'Bicep'
)

Exercise.create(
  :name => 'Push Press',
  :image => 'http://www.womenshealthmag.com/files/images/0609_push_press.jpg',
  :description => 'The push up may just be the perfect total body exercise that builds both upper body and core strength. Done properly, it is a compound exercise that uses muscles in the chest, shoulders, triceps, back, abs and even the legs.',
  :category => 'shoulders'
)


Exercise.create(
  :name => 'Chest Press',
  :image => 'http://www.womenshealthmag.com/files/images/0906-dbell-chest-press.jpg',
  :description => 'The push up may just be the perfect total body exercise that builds both upper body and core strength. Done properly, it is a compound exercise that uses muscles in the chest, shoulders, triceps, back, abs and even the legs.',
  :category => 'Chest'
)