class UsersController < ApplicationController
  before_action :find_user, only: [ :show, :edit, :update ]

  def show
  end

  def edit
    authorize @user
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    if @User.destroy
      redirect_to root_path, notice: 'User was successfully deleted.'
    else
      redirect_to user_path
    end
  end
end

private

  def user_params
    params.require(:user).permit(:name, :description)
  end

  def find_user
    @user = User.find(params[:id])
    authorize @user
  end
