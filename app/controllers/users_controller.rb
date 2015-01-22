class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @users = User.all
    respond_with(@users)
  end

  def show
    respond_with(@user)
  end

  def new
    # @user = User.new
    # respond_with(@user)
    redirect_to users_url
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_url
  end

  def update
    @user.update(user_params)
    redirect_to users_url
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email)
    end
end
