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
      render :index
    end

  end

  def update

  end

  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:title,:priority,:completed, :user_id)
  end


end
