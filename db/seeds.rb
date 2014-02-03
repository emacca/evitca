User.destroy_all
Workout.destroy_all
Exercise.destroy_all


User.create(
  :name => 'Emily'
)

Workout.create(
  :day => 'Monday',
  :name => 'fitness',
  :user_id => User.first
)

Exercise.create(
  :name => 'Push Ups',
  :image => 'http://www.weightloss-tips4u.com/wp-content/uploads/2012/07/classic-push-up_push-up-variations.jpg',
  :description => 'The push up may just be the perfect total body exercise that builds both upper body and core strength. Done properly, it is a compound exercise that uses muscles in the chest, shoulders, triceps, back, abs and even the legs.'
)