class UsersController < ApplicationController

  def index
<<<<<<< HEAD
    return nil if params[:keyword] == " "
    @users = User.where('name LIKE(?)', "%#{params[:keyword]}%" ).where.not(id: current_user.id)
=======
    @users = User.search(params[:keyword], current_user.id)
>>>>>>> master
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
