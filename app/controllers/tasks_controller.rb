class TasksController < ApplicationController
  def new
    @task=Task.new
    @exercises=Exercise.all
    @workout = Workout.find(params[:workout_id])
  end

  def edit
  end

  def create
  
    @workout = Workout.find(params[:workout_id])
    @task = @workout.tasks.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @workout, notice: 'Exercises was successfully added.' }
        format.json { render :show, status: :created, location: @workout }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  def task_params
      params.require(:task).permit(:quantity, :exercise_id)
    end
end
