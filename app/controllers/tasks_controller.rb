class TasksController < ApplicationController
  before_action :find_task, only: [:edit, :update, :destroy]

  def index
    @tasks = Task.all

  end

  def new

  end

  def create
    @task = Task.new(task_params)

    @task.save
    redirect_to tasks_path
  end

  def edit

  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Task was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    @task = params.require(:task).permit(:content, :urgent, :important)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
