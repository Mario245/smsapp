class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_user!
  before_action :correct_user?, :except => [:index]
=======
  before_filter :authenticate_user!
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
=======
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00
  end

end
