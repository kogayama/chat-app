class UsersController < ApplicationController

  def index
    @users = User.search(params[:keyword], current_user.id)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def edit
  end

  def update
    if current_user.update(params_user)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def params_user
    params.require(:user).permit(:name, :email)
  end
end
