class GoalsController < ApplicationController
  before_action :require_logged_in, only:[:create, :destroy]

  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = params[:user_id]

    if @goal.save
      redirect_to user_url(params[:user_id])
    else
      flash[:errors] = @goal.errors.full_messages
      redirect_to user_url(params[:user_id])
    end 
  end

  def destroy
    @goal = Goal.find_by(id: params[:user_id])

    if @goal.user_id == current_user.id
      @goal.destroy
    end

    redirect_to users_url
  end

  def edit
    @goal = current_user.goals.find_by(id: params[:id])
    render :edit
  end

  def update
    @goal = Goal.find_by(id: paras[:id])

    if current_user.id == @goal.user_id && @goal.update(goal_params)
      redirect_to user_url(@goal.user_id)
    else
      flash.now[:errors] = @goal.errors.full_messages
      render :edit
    end
  end

  def goal_params
    params.require(:goals).require(:name, :details, :status)
  end
end
