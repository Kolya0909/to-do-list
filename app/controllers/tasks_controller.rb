class TasksController < ApplicationController



  def index
    @user = current_user
    @completed = [
      ['Later',1],
      ['Next',2],
      ['Now',3]
    ]
    if user_signed_in?
      @task = Task.where(user_id: @user.id).order('priority DESC')
    end
  end
  
  def new

  end

  def create
    @completed = [
      ['Later',1],
      ['Next',2],
      ['Now',3]
    ]
    @user = current_user
    @task = @user.tasks.create(task_params)
    if @task.save
      flash[:success] = "Task save"
      redirect_to root_path
    else
      redirect_to request.referrer
      flash[:danger] = "Title not must be empty, and must be more than 5 characters"
    end

  end

  def edit
      @user = current_user
      @task = Task.find(params[:id])
  end

  def update
      
  end

  def complete
    @task = Task.find(params[:id])
    @task.complete!
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title,:priority,:completed, :user_id)
  end


end
