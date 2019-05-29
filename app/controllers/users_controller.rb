class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    instruments = Instrument.where(id: params[:user][:instruments])
    @user.instruments = instruments


    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  # def user_params
  #   params.require
  # end
end
