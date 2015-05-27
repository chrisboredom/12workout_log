class ExercisesController < ApplicationController
	def create
		@workout = Workout.find(params[:workout_id])
		@exercise = @workout.exercises.create(exercise_params)
		#@exercise = @workout.exercises.create(params[:exercise].permit(:name, :sets, :reps))

		redirect_to workout_path(@workout)
	end

	private
	def exercise_params
		params.require(:exercise).permit(:name, :sets, :reps)
	end
end
