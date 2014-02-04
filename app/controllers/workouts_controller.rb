class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  # GET /workouts
  # GET /workouts.json
  def index
    if current_user.workouts.blank?
      @workouts = current_user.workouts.create(:day => 'Monday')
      @workouts = current_user.workouts.create(:day => 'Tuesday')
      @workouts = current_user.workouts.create(:day => 'Wednesday')
      @workouts = current_user.workouts.create(:day => 'Thursday')
      @workouts = current_user.workouts.create(:day => 'Friday')
      @workouts = current_user.workouts.create(:day => 'Saturday')
      @workouts = current_user.workouts.create(:day => 'Sunday')
    else
    @workouts = current_user.workouts.order('created_at ASC')
    end
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    @exercises = Exercise.order('name ASC')

  end


  # GET /workouts/1/edit
  def edit
    @user = @workout.user
    @exercises = Exercise.order('name ASC')

  end

 
  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    @workout.exercise_ids = params[:workout][:exercise_ids]
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  # def destroy
  #   @workout.destroy
  #   respond_to do |format|
  #     format.html { redirect_to workouts_url }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:day, :name, :user_id, :exercise_ids)
    end
end
