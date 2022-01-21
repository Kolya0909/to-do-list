class TasksController < ApplicationController



  def index
    @user = current_user
    if user_signed_in?
      @task = Task.where(user_id: @user.id).order('priority DESC')
    end

    def create_categories_array
        @categories = Category.all
        $categories = []
        @categories.each do |category|
        @one_category = []
        @one_category.push(category.category_name)
        @one_category.push(category.id)
        $categories.push(@one_category)
      end
      $categories
    end
    create_categories_array()
    @cat = Category.find(1)
  end
  
  def new

  end

  def create
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
      @task = Task.find(params[:id])
      if @task.update(task_params)
      flash[:success] = "Task with id = #{@task.id} was updated"
      redirect_to tasks_path
      else
        redirect_to request.referrer
        flash[:danger] = "Title not must be empty, and must be more than 5 characters"
      end
      
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
    params.require(:task).permit(:title,:priority,:completed, :user_id, :category_id).merge(date: Time.now.strftime("%d.%m.%Y"))
  end


end
