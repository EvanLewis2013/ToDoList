class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def new
    @new_task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    @task.update(task_params)
    if @task.save
      redirect_to root_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
