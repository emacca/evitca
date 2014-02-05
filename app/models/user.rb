class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :workouts
  
  after_create do
    workouts.create(:day => 'Monday')
    workouts.create(:day => 'Tuesday')
    workouts.create(:day => 'Wednesday')
    workouts.create(:day => 'Thursday')
    workouts.create(:day => 'Friday')
    workouts.create(:day => 'Saturday')
    workouts.create(:day => 'Sunday')
  end
end
