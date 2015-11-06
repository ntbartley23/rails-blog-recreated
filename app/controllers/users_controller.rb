class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User successfully created"
      redirect_to user_path(@user)
     else
      flash[:notice] = "User cannot be create."
       redirect_to :back    
     end
  end

  def edit
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "user successfully deleted"
    else
      flash[:notice] = "Error occured while deleting. User could Not be deleted."
  
   redirect_to :back
   end
 end 
end

private
def set_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:fname, :lname, :email, :password, :username)
end
